package com.unknowns.Timers;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.unknowns.hibernate.entity.User;
import com.unknowns.hibernate.entity.Workers;
import com.unknowns.hibernate.util.HibernateUtil;
import com.unknowns.hibernate.util.Queries;

public class CompanyMoney {
	static int sayac = 0;
	static Queries queries ;
	static Session session;
	static Transaction transaction;
	public static void TimerMoney() {
		Timer myTimer = new Timer();
		TimerTask gorev = new TimerTask() {

			@Override
			public void run() {
				int money = 0;
				int workermoney = 0;
				queries = Queries.getQueries();
				session = HibernateUtil.getSessionFactory().openSession();
				List<User> users = session.createQuery("from User",User.class).list();
				transaction = session.beginTransaction();
				for(int i = 0 ; i< users.size();i++) {
					money = 0;
					workermoney = 0;
					if(users.get(i).getUserinfo().getCompany() != null) {
						money += users.get(i).getUserinfo().getCompany().getItems().getCount1()*100;
						money += users.get(i).getUserinfo().getCompany().getItems().getCount2()*200;
						money += users.get(i).getUserinfo().getCompany().getItems().getCount3()*300;
						money += users.get(i).getUserinfo().getCompany().getItems().getCount4()*400;
						money += users.get(i).getUserinfo().getCompany().getItems().getCount5()*500;
						for(Workers worker : users.get(i).getUserinfo().getCompany().getWorkers()) 
							workermoney += worker.getLvl();
						money = (money/100)*workermoney;
						users.get(i).getUserinfo().setMoney(users.get(i).getUserinfo().getMoney()+money);
						session.update(users.get(i));
					}
				}
				transaction.commit();
				session.close();
			}
		};

		myTimer.schedule(gorev, 0, 3600000);

	}
}
