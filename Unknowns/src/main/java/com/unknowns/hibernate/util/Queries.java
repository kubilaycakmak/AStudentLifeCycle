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
	public static Queries getQueries() {
		if(queries == null)
			queries = new Queries();
		
		return queries;
	}
}
