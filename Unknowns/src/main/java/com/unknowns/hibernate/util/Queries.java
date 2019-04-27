package com.unknowns.hibernate.util;

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
			Userinfo userinfo = new Userinfo(0,100,type,100,null);
			User user = new User(name, lastname, email, nickname, password, hintcode,userinfo);
			transaction = session.beginTransaction();
			session.save(userinfo);
			session.save(user);
			transaction.commit();
			session.close();
		}
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
		int stamina = 0;
		int xp = 0;
		int money = 0;
		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		if(choose.equals("Job1")) {
			stamina = 10;
			xp = 1;
			money = 25;
		}
		else if(choose.equals("Job2")) {
			stamina = 20;
			xp = 2;
			money = 55;
		}
		else if(choose.equals("Job3")) {
			stamina = 30;
			xp = 3;
			money = 115;
		}
		else if(choose.equals("Job4")) {
			stamina = 40;
			xp = 4;
			money = 155;
		}
		else if(choose.equals("Job5")) {
			stamina = 50;
			xp = 5;
			money = 205;
		}
		if(users.get(0).getUserinfo().getStamina() >= stamina) {
			users.get(0).getUserinfo().setStamina(users.get(0).getUserinfo().getStamina()-stamina);
			users.get(0).getUserinfo().setXp(users.get(0).getUserinfo().getXp()+xp);
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()+money);
			users.get(0).getUserinfo().setKnowledge(null);
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.update(users.get(0).getUserinfo());
			session.update(users.get(0));
			transaction.commit();
			session.close();
			check = true;
		}	
		return check;
	}
	public static Queries getQueries() {
		if(queries == null)
			queries = new Queries();
		
		return queries;
	}
}
