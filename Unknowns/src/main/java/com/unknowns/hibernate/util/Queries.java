package com.unknowns.hibernate.util;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.unknowns.hibernate.entity.User;

public class Queries {
	static Session session;
	static Transaction transaction;
	private static Queries queries;
	private Queries() {
	
	}
	
	public boolean signUp(String name,String lastname,String email,String nickname,String password,String hintcode ) {
		boolean check = true;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> users = session.createQuery("from User",User.class).list();
		for(User user : users) {
			if(user.getEmail().equals(email) || user.getNickname().equals(nickname))
				check = false;
		}
		if(check) {
			User user = new User(name, lastname, email, nickname, password, hintcode);
			transaction = session.beginTransaction();
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
		
		return  check;
	}
	public static Queries getQueries() {
		if(queries == null)
			queries = new Queries();
		
		return queries;
	}
}
