package com.unknowns.Timers;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.unknowns.hibernate.entity.User;
import com.unknowns.hibernate.util.HibernateUtil;
import com.unknowns.hibernate.util.Queries;


public class Bank {
	static Queries queries;
	static Session session;
	static Transaction transaction;

	public static void BankTimer() {
		Timer myTimer = new Timer();
		TimerTask gorev = new TimerTask() {
			
			@Override
			public void run() {
				int money = 0;
				queries = Queries.getQueries();
				session = HibernateUtil.getSessionFactory().openSession();
				List<User> users = session.createQuery("from User",User.class).list();
				transaction = session.beginTransaction();
				for(int i = 0 ; i < users.size();i++) {
					money  = 0; 
					if(users.get(i).getUserinfo().getBank() != 0) {
						money = (users.get(i).getUserinfo().getBank()/100)*105;
						users.get(i).getUserinfo().setBank(money);
						session.update(users.get(i));
					}
				}
				transaction.commit();
				session.close();
			}
		};
		myTimer.schedule(gorev, 500);
	}
}

