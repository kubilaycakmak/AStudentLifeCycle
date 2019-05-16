package com.unknowns.Timers;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.unknowns.hibernate.entity.User;
import com.unknowns.hibernate.entity.Userinfo;
import com.unknowns.hibernate.util.HibernateUtil;
import com.unknowns.hibernate.util.Queries;


public class TopList {
	static ArrayList<User> top5XpList ;
	static ArrayList<User> top5MoneyList;
	static int countOfUser;
	static Queries queries ;
	static Session session;
	static Transaction transaction;
	public static void Top5List() {
		Timer myTimer = new Timer();
		TimerTask gorev = new TimerTask() {
			@Override
			public void run() {
				top5XpList = new ArrayList<User>();
				top5MoneyList = new ArrayList<User>();
				queries = Queries.getQueries();
				session = HibernateUtil.getSessionFactory().openSession();
				List<User> users = session.createQuery("from User",User.class).list();
				countOfUser = users.size();
				List<Userinfo> userinfo = session.createQuery("from Userinfo Order By xp DESC",Userinfo.class).list();
				for(int i = 0 ; i < 5 ; i++) {
					for (int j = 0; j < users.size(); j++) {
						if(userinfo.get(i).getId() == users.get(j).getUserinfo().getId()) {
							top5XpList.add(users.get(j));
						}
					}
				}
				List<Userinfo> userinfo2 = session.createQuery("from Userinfo Order By (bank+money) DESC",Userinfo.class).list();
				for(int i = 0 ; i < 5 ; i++) {
					for (int j = 0; j < users.size(); j++) {
						if(userinfo2.get(i).getId() == users.get(j).getUserinfo().getId()) {
							top5MoneyList.add(users.get(j));
						}
					}
				}
			}
		};

		myTimer.schedule(gorev, 0, 3600000);

	}
	
	public ArrayList<User> getTop5XpList(){
		return top5XpList;
	}
	public ArrayList<User> getTop5MoneyList(){
		return top5MoneyList;
	}
	public int getCountOfUser() {
		return countOfUser;
	}
}
