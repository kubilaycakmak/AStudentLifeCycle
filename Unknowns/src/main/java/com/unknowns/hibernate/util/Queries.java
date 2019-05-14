package com.unknowns.hibernate.util;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.unknowns.hibernate.entity.Company;
import com.unknowns.hibernate.entity.Items;
import com.unknowns.hibernate.entity.User;
import com.unknowns.hibernate.entity.Userinfo;
import com.unknowns.hibernate.entity.Workers;

public class Queries {
	static Session session;
	static Transaction transaction;
	private static Queries queries;

	private Queries() {

	}

	public boolean signUp(String name, String lastname, String email, String nickname, String password, String hintcode,
			int type) {
		boolean check = true;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User", User.class).list();
		for (User user : users) {
			if (user.getEmail().equals(email) || user.getNickname().equals(nickname))
				check = false;
		}
		if (check) {
			Userinfo userinfo = new Userinfo(0, 100, type, 100, null, new Date(), 0, new Date(), 0,new Date(),0,0);
			User user = new User(name, lastname, email, nickname, password, hintcode, userinfo);
			transaction = session.beginTransaction();
			session.save(userinfo);
			session.save(user);
			transaction.commit();
		}
		session.close();
		return check;
	}

	public boolean signIn(String email, String password) {
		boolean check = false;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User", User.class).list();
		for (User user : users) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password))
				check = true;
		}
		session.close();
		return check;
	}

	public User getUser(String email) {
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email = '" + email + "'", User.class).list();
		return users.get(0);
	}

	public boolean freelance(String choose, String email) {
		boolean check = false;
		int fchoose = 0;
		int stamina = 0;
		int xp = 0;
		int money = 0;
		session = HibernateUtil.getSessionFactory().getCurrentSession();
		transaction = session.beginTransaction();
		List<User> users = session.createQuery("from User where email = '" + email + "'", User.class).list();
		if (choose.equals("1")) {
			stamina = 10;
			xp = 1;
			fchoose = 1;
			money = 25;
		} else if (choose.equals("2")) {
			stamina = 20;
			xp = 2;
			fchoose = 2;
			money = 55;
		} else if (choose.equals("3")) {
			stamina = 30;
			xp = 3;
			fchoose = 3;
			money = 115;
		} else if (choose.equals("4")) {
			stamina = 40;
			xp = 4;
			fchoose = 4;
			money = 155;
		} else if (choose.equals("5")) {
			stamina = 50;
			xp = 5;
			fchoose = 5;
			money = 205;
		}
		if (users.get(0).getUserinfo().getStamina() >= stamina) {
			users.get(0).getUserinfo().setStamina(users.get(0).getUserinfo().getStamina() - stamina);
			users.get(0).getUserinfo().setXp(users.get(0).getUserinfo().getXp() + xp);
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney() + money);
			users.get(0).getUserinfo().setFreelancedate(new Date());
			users.get(0).getUserinfo().setFreelancetype(fchoose);
			if (users.get(0).getUserinfo().getCompany() != null) {
				users.get(0).getUserinfo().setCompany(users.get(0).getUserinfo().getCompany());
				if(users.get(0).getUserinfo().getCompany().getWorkers().size() != 0) {
					users.get(0).getUserinfo().getCompany().setWorkers(users.get(0).getUserinfo().getCompany().getWorkers());
				} else {
					users.get(0).getUserinfo().getCompany().setWorkers(null);
				}
			} else {
				users.get(0).getUserinfo().setCompany(null);
			}
			session.update(users.get(0).getUserinfo());
			session.update(users.get(0));
			transaction.commit();
			check = true;
			session.close();
			session = HibernateUtil.getSessionFactory().getCurrentSession();
			transaction = session.beginTransaction();
			List<Userinfo> userinfos = session.createQuery("from Userinfo", Userinfo.class).list();
		}
		session.close();
		return check;
	}

	public boolean fastfood(String choose, String email) {
		boolean check = false;
		int fchoose = 0;
		int stamina = 0;
		int money = 0;
		session = HibernateUtil.getSessionFactory().getCurrentSession();
		transaction = session.beginTransaction();
		List<User> users = session.createQuery("from User where email = '" + email + "'", User.class).list();
		if (choose.equals("m1")) {
			stamina = 10;
			fchoose = 1;
			money = 5;
		} else if (choose.equals("m2")) {
			stamina = 20;
			fchoose = 2;
			money = 10;
		} else if (choose.equals("m3")) {
			stamina = 40;
			fchoose = 3;
			money = 15;
		} else if (choose.equals("m4")) {
			stamina = 50;
			fchoose = 4;
			money = 20;
		} else if (choose.equals("m5")) {
			stamina = 100;
			fchoose = 5;
			money = 25;
		}

		if (users.get(0).getUserinfo().getMoney() >= money) {
			if (users.get(0).getUserinfo().getStamina() + stamina >= 100)
				users.get(0).getUserinfo().setStamina(100);
			else
				users.get(0).getUserinfo().setStamina(users.get(0).getUserinfo().getStamina() + stamina);
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney() - money);
			users.get(0).getUserinfo().setFastFooddate(new Date());
			users.get(0).getUserinfo().setFastFoodtype(fchoose);
			if (users.get(0).getUserinfo().getCompany() != null) {
				users.get(0).getUserinfo().setCompany(users.get(0).getUserinfo().getCompany());
				if(users.get(0).getUserinfo().getCompany().getWorkers().size() != 0) {
					users.get(0).getUserinfo().getCompany().setWorkers(users.get(0).getUserinfo().getCompany().getWorkers());
				} else {
					users.get(0).getUserinfo().getCompany().setWorkers(null);
				}
			} else {
				users.get(0).getUserinfo().setCompany(null);
			}
			session.update(users.get(0).getUserinfo());
			session.update(users.get(0));
			transaction.commit();
			check = true;
		}
		session.close();
		return check;
	}

	public int hack(String choose, String email) {
		int result=0;
		int jailchance = 0;
		int successchance = 0;
		int fchoose = 0;
		int money = 0;

		session = HibernateUtil.getSessionFactory().openSession();
		transaction = session.beginTransaction();
		List<User> users = session.createQuery("from User where email = '" + email + "'", User.class).list();
		if (choose.equals("1")) {
			jailchance = 5;
			successchance = 70;
			fchoose = 1;
			money = 50;
		} else if (choose.equals("2")) {
			jailchance = 10;
			successchance = 65;
			fchoose = 2;
			money = 100;
		} else if (choose.equals("3")) {
			jailchance = 15;
			successchance = 60;
			fchoose = 3;
			money = 150;
		} else if (choose.equals("4")) {
			jailchance = 20;
			successchance = 55;
			fchoose = 4;
			money = 200;
		} else if (choose.equals("5")) {
			jailchance = 25;
			successchance = 50;
			fchoose = 5;
			money = 250;
		}
		Random random = new Random();
		int rand = random.nextInt(100);
		if(rand < successchance) {
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney() + money);
			result=1;
		}
		else if(rand < successchance+ jailchance) {
			users.get(0).getUserinfo().setJail(300+random.nextInt(350));
			users.get(0).getUserinfo().setFastFoodtype(6);
			users.get(0).getUserinfo().setFastFooddate(new Date());
			users.get(0).getUserinfo().setFreelancetype(6);
			users.get(0).getUserinfo().setFreelancedate(new Date());
			result=2;
		}
		users.get(0).getUserinfo().setHackdate(new Date());
		if (users.get(0).getUserinfo().getCompany() != null) {
			users.get(0).getUserinfo().setCompany(users.get(0).getUserinfo().getCompany());
			if(users.get(0).getUserinfo().getCompany().getWorkers().size() != 0) {
				users.get(0).getUserinfo().getCompany().setWorkers(users.get(0).getUserinfo().getCompany().getWorkers());
			} else {
				users.get(0).getUserinfo().getCompany().setWorkers(null);
			}
		} else {
			users.get(0).getUserinfo().setCompany(null);
		}
		session.update(users.get(0).getUserinfo());
		session.update(users.get(0));
		transaction.commit();
		session.close();
		return result;
	}

	public int getFreelanceTime(String email) {
		int second = 0;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email='" + email + "'", User.class).list();
		Date date = new Date();
		int type = users.get(0).getUserinfo().getFreelancetype();
		second = Math.abs((int) ((users.get(0).getUserinfo().getFreelancedate().getTime() - date.getTime()) / 1000));
		switch (type) {
		case 1:
			if (second > 120)
				second = 0;
			else
				second = 120 - second;
			break;
		case 2:
			if (second > 240)
				second = 0;
			else
				second = 240 - second;
			break;
		case 3:
			if (second > 480)
				second = 0;
			else
				second = 480 - second;
			break;
		case 4:
			if (second > 960)
				second = 0;
			else
				second = 960 - second;
			break;
		case 5:
			if (second > 1920)
				second = 0;
			else
				second = 1920 - second;
			break;
		case 6:
			if (second > 86400)
				second = 0;
			else
				second = 86400-second;
			break;
		default:
			second = 0;
			break;
		}
		return second;
	}

	public int getFastFoodTime(String email) {
		int second = 0;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email='" + email + "'", User.class).list();
		Date date = new Date();
		int type = users.get(0).getUserinfo().getFastFoodtype();
		second = Math.abs((int) ((users.get(0).getUserinfo().getFastFooddate().getTime() - date.getTime()) / 1000));
		switch (type) {
		case 1:
			if (second > 120)
				second = 0;
			else
				second = 120 - second;
			break;
		case 2:
			if (second > 240)
				second = 0;
			else
				second = 240 - second;
			break;
		case 3:
			if (second > 480)
				second = 0;
			else
				second = 480 - second;
			break;
		case 4:
			if (second > 960)
				second = 0;
			else
				second = 960 - second;
			break;
		case 5:
			if (second > 1920)
				second = 0;
			else
				second = 1920 - second;
			break;
		case 6:
			if (second > 86400)
				second = 0;
			else
				second = 86400-second;
			break;
		default:
			second = 0;
			break;
		}
		session.close();
		return second;
	}
	public int getHackTime(String email) {
		int second = 0;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email='" + email + "'", User.class).list();
		Date date = new Date();
		int type = users.get(0).getUserinfo().getFreelancetype();
		second = Math.abs((int) ((users.get(0).getUserinfo().getHackdate().getTime() - date.getTime()) / 1000));
		if(users.get(0).getUserinfo().getFastFoodtype()!=6) {
			if(second>7200)
				second = 0;
			else
				second = 7200-second;
		}
		else {
			if(second>86400)
				second = 0;
			else
				second = 86400-second;
		}
		session.close();
		return second;
	}
	public int getJailTime(String email) {
		int second = 0;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email='" + email + "'", User.class).list();
		Date date = new Date();
		int type = users.get(0).getUserinfo().getFreelancetype();
		second = Math.abs((int) ((users.get(0).getUserinfo().getHackdate().getTime() - date.getTime()) / 1000));
		if(users.get(0).getUserinfo().getFastFoodtype()==6) {
			if(second>86400)
				second = 0;
			else
				second = 86400-second;
		}
		else {
			second = 0;
		}
		session.close();
		return second;
	}
	public boolean bribe(String email) {
		boolean check = false;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email='" + email + "'", User.class).list();
		if(users.get(0).getUserinfo().getMoney()>=users.get(0).getUserinfo().getJail()) {
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()-users.get(0).getUserinfo().getJail());
			users.get(0).getUserinfo().setJail(0);
			users.get(0).getUserinfo().setFastFoodtype(0);
			users.get(0).getUserinfo().setFreelancetype(0);
			check = true;
		}
		if (users.get(0).getUserinfo().getCompany() != null) {
			users.get(0).getUserinfo().setCompany(users.get(0).getUserinfo().getCompany());
		} else {
			users.get(0).getUserinfo().setCompany(null);
		}
		transaction = session.beginTransaction();
		session.update(users.get(0).getUserinfo());
		session.update(users.get(0));
		transaction.commit();
		check = true;
		List<Userinfo> userinfos = session.createQuery("from Userinfo", Userinfo.class).list();
		session.close();
		return check;
	}
	public static Queries getQueries() {
		if (queries == null)
			queries = new Queries();

		return queries;
	}

	public void CreateCompany(String email,String CompanyName) {
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		if(users.get(0).getUserinfo().getXp() >= 100) {
			List<Workers> workers = null;
			Items items = new Items(0,0,0,0,0);
			Company company = new Company(CompanyName,workers,items);
			users.get(0).getUserinfo().setCompany(company);
			transaction = session.beginTransaction();
			session.save(items);
			session.save(company);
			session.update(users.get(0));
			transaction.commit();
			session.close();
		}
	}
	public void hire(String email) {
		session = HibernateUtil.getSessionFactory().openSession();
		List<Workers> workers = new ArrayList<Workers>() ;
 		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		if(users.get(0).getUserinfo().getCompany().getWorkers().size() < users.get(0).getUserinfo().getXp()/50) {
			if(users.get(0).getUserinfo().getCompany().getWorkers().size() != 0) 
				workers = users.get(0).getUserinfo().getCompany().getWorkers();
			Workers worker = new Workers(1);
			workers.add(worker);
			users.get(0).getUserinfo().getCompany().setWorkers(workers);
			transaction = session.beginTransaction();
			session.save(worker);
			session.update(users.get(0));
			transaction.commit();
			session.close();
		}
	}

	public void improve(String workerid, String email) {
		int money = 0 ;
		session = HibernateUtil.getSessionFactory().openSession();
 		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		List<Workers> workers = session.createQuery("from Workers where id = '"+workerid+"'",Workers.class).list();
		if(workers.get(0).getLvl() <5) {
			if(workers.get(0).getLvl() == 1)
				money = 50;
			if(workers.get(0).getLvl() == 2)
				money = 75;
			if(workers.get(0).getLvl() == 3)
				money = 100;
			if(workers.get(0).getLvl() == 4)
				money = 125;
			if(workers.get(0).getLvl() == 5)
				money = 150;
			
			if(money <= users.get(0).getUserinfo().getMoney()) {
				workers.get(0).setLvl(workers.get(0).getLvl()+1);
				users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()-money);
				
				transaction = session.beginTransaction();
				session.update(workers.get(0));
				session.update(users.get(0));
				transaction.commit();
				session.close();
			}

		}
	}

	public void buy(String id, String email) {
		int money = 0 ;
		session = HibernateUtil.getSessionFactory().openSession();
 		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
		switch (id) {
		case "1":
			money = 1000;
			users.get(0).getUserinfo().getCompany().getItems().setCount1(users.get(0).getUserinfo().getCompany().getItems().getCount1()+1);
			break;
		case "2":
			money = 2000;
			users.get(0).getUserinfo().getCompany().getItems().setCount2(users.get(0).getUserinfo().getCompany().getItems().getCount2()+1);
			break;
		case "3":
			money = 3000;
			users.get(0).getUserinfo().getCompany().getItems().setCount3(users.get(0).getUserinfo().getCompany().getItems().getCount3()+1);
			break;
		case "4":
			money = 4000;
			users.get(0).getUserinfo().getCompany().getItems().setCount4(users.get(0).getUserinfo().getCompany().getItems().getCount4()+1);
			break;
		case "5":
			money = 5000;
			users.get(0).getUserinfo().getCompany().getItems().setCount5(users.get(0).getUserinfo().getCompany().getItems().getCount5()+1);
			break;
		}
		if(money <= users.get(0).getUserinfo().getMoney()) {
			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()-money);
			transaction = session.beginTransaction();
			session.update(users.get(0));
			transaction.commit();
			session.close();
		}
			
		
	}

	public int getBank(String email) {
		session = HibernateUtil.getSessionFactory().openSession();
 		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
 		session.close();
		return  users.get(0).getUserinfo().getBank();
	}

	public void deposit(String email, int money) {
		session = HibernateUtil.getSessionFactory().openSession();
 		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
 		if(users.get(0).getUserinfo().getMoney() >= money) {
 			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()-money);
 			users.get(0).getUserinfo().setBank(users.get(0).getUserinfo().getBank()+money);
 		}
 		transaction = session.beginTransaction();
 		session.update(users.get(0));
 		transaction.commit();
 		session.close();
		
	}

	public void withdraw(String email, int money) {
		session = HibernateUtil.getSessionFactory().openSession();
 		List<User> users = session.createQuery("from User where email = '"+email+"'",User.class).list();
 		if(users.get(0).getUserinfo().getBank() >= money) {
 			users.get(0).getUserinfo().setMoney(users.get(0).getUserinfo().getMoney()+money);
 			users.get(0).getUserinfo().setBank(users.get(0).getUserinfo().getBank()-money);
 		}
 		transaction = session.beginTransaction();
 		session.update(users.get(0));
 		transaction.commit();
 		session.close();
		
	}

}
