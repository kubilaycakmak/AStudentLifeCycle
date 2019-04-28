package com.unknowns.hibernate.util;


import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.unknowns.hibernate.entity.User;
import com.unknowns.hibernate.entity.Userinfo;

public class Queries {
	static Session session;
	static Transaction transaction;
	private static Queries queries;
	private Queries() {
	
	}
	
	public boolean signUp(String name,String lastname,String email,String nickname,String password,String hintcode,int type ) {
		boolean check = true;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User",User.class).list();
		for(User user : users) {
			if(user.getEmail().equals(email) || user.getNickname().equals(nickname))
				check = false;
		}
		if(check) {
			Userinfo userinfo = new Userinfo(0,100,type,100,null,new Date(),0,new Date(),0);
			User user = new User(name, lastname, email, nickname, password, hintcode,userinfo);
			transaction = session.beginTransaction();
			session.save(userinfo);
			session.save(user);
			transaction.commit();
		}
		session.close();
		return check;
	}
	public boolean signIn(String email,String password) {
		boolean check = false;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User",User.class).list();
		for(User user : users) {
			if(user.getEmail().equals(email) && user.getPassword().equals(password))
				check = true;
		}
		session.close();
		return  check;
	}
	public User getUser(String email) {
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		return users.get(0);
	}
	public boolean freelance(String choose,String email) {
		boolean check = false;
		int fchoose = 0;
		int stamina = 0;
		int xp = 0;
		int money = 0;
		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		if(choose.equals("Job1")) {
			stamina = 10;
			xp = 1;
			fchoose = 1;
			money = 25;
		}
		else if(choose.equals("Job2")) {
			stamina = 20;
			xp = 2;
			fchoose = 2;
			money = 55;
		}
		else if(choose.equals("Job3")) {
			stamina = 30;
			xp = 3;
			fchoose = 3;
			money = 115;
		}
		else if(choose.equals("Job4")) {
			stamina = 40;
			xp = 4;
			fchoose = 4;
			money = 155;
		}
		else if(choose.equals("Job5")) {
			stamina = 50;
			xp = 5;
			fchoose = 5;
			money = 205;
		}
		if(users.get(0).getUserinfo().getStamina() >= stamina) {
			users.get(0).getUserinfo().setStamina(users.get(0).getUserinfo().getStamina()-stamina);
			users.get(0).getUserinfo().setXp(users.get(0).getUserinfo().getXp()+xp);
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()+money);
			users.get(0).getUserinfo().setFreelancedate(new Date());
			users.get(0).getUserinfo().setFreelancetype(fchoose);
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			if(users.get(0).getUserinfo().getKnowledge().size()!=0) {
				users.get(0).getUserinfo().setKnowledge(users.get(0).getUserinfo().getKnowledge());
			}
			else {
				users.get(0).getUserinfo().setKnowledge(null);
			}
			session.update(users.get(0).getUserinfo());
			session.update(users.get(0));
			transaction.commit();
			check = true;
			List<Userinfo> userinfos = session.createQuery("from Userinfo",Userinfo.class).list();
		}	
		session.close();
		return check;
	}
	public boolean fastfood(String choose,String email) {
		boolean check = false;
		int fchoose = 0;
		int stamina = 0;
		int money = 0;
		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		if(choose.equals("m1")) {
			stamina = 10;
			fchoose = 1;
			money = 5;
		}
		else if(choose.equals("m2")) {
			stamina = 20;
			fchoose = 2;
			money = 10;
		}
		else if(choose.equals("m3")) {
			stamina = 40;
			fchoose = 3;
			money = 15;
		}
		else if(choose.equals("m4")) {
			stamina = 50;
			fchoose = 4;
			money = 20;
		}
		else if(choose.equals("m5")) {
			stamina = 100;
			fchoose = 5;
			money = 25;
		}
		
		if(users.get(0).getUserinfo().getMoney() >= money) {
			if(users.get(0).getUserinfo().getStamina()+stamina >= 100)
				users.get(0).getUserinfo().setStamina(100);
			else
				users.get(0).getUserinfo().setStamina(users.get(0).getUserinfo().getStamina()+stamina);
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()-money);
			users.get(0).getUserinfo().setFastFooddate(new Date());
			users.get(0).getUserinfo().setFastFoodtype(fchoose);
			if(users.get(0).getUserinfo().getKnowledge().size()!=0) {
				users.get(0).getUserinfo().setKnowledge(users.get(0).getUserinfo().getKnowledge());
			}
			else {
				users.get(0).getUserinfo().setKnowledge(null);
			}
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.update(users.get(0).getUserinfo());
			session.update(users.get(0));
			transaction.commit();
			check = true;
		}	
		session.close();
		return check;
	}
	
	public int getFreelanceTime(String email) {
		int second=0;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email='"+email+"'",User.class).list();
		Date date = new Date();
		int type = users.get(0).getUserinfo().getFreelancetype();
		second = Math.abs((int) ((users.get(0).getUserinfo().getFreelancedate().getTime()-date.getTime())/1000));
		switch(type) {
		case 1:
			if(second > 120) 
				second = 0;
			else
				second = 120-second;
			break;
		case 2:
			if(second > 240) 
				second = 0;
			else
				second = 240-second;
			break;
		case 3:
			if(second > 480) 
				second = 0;
			else
				second = 480-second;
			break;
		case 4:
			if(second > 960) 
				second = 0;
			else
				second = 960-second;
			break;
		case 5:
			if(second > 1920) 
				second = 0;
			else
				second = 1920-second;
			break;
		default:
			second = 0;
			break;
		}
		return second;
	}
	public int getFastFoodTime(String email) {
		int second=0;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email='"+email+"'",User.class).list();
		Date date = new Date();
		int type = users.get(0).getUserinfo().getFastFoodtype();
		second = Math.abs((int) ((users.get(0).getUserinfo().getFastFooddate().getTime()-date.getTime())/1000));
		switch(type) {
		case 1:
			if(second > 120) 
				second = 0;
			else
				second = 120-second;
			break;
		case 2:
			if(second > 240)
				second = 0;
			else
				second = 240-second;
			break;
		case 3:
			if(second > 480) 
				second = 0;
			else
				second = 480-second;
			break;
		case 4:
			if(second > 960) 
				second = 0;
			else
				second = 960-second;
			break;
		case 5:
			if(second > 1920)
				second = 0;
			else
				second = 1920-second;
			break;
		default:
			second = 0;
			break;
		}
		System.out.println(second);
		return second;
	}
	public static Queries getQueries() {
		if(queries == null)
			queries = new Queries();
		
		return queries;
	}
}
