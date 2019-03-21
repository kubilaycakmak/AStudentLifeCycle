package com.coderstyle.CoderStyleWebService.Hibernate.Utility;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.coderstyle.CoderStyleWebService.Hibernate.Entity.*;

public class HibernateQueries {
	public List<User> allUsers(){
		Transaction transaction = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        Date date = new Date("04/02/1997");
        // start a transaction
        User user = new User("kadir123","kadir123","kadiraydemir19907@gmail.com","kadir","aydemir",date,12345,"java","Best",1,1234);
        transaction = session.beginTransaction();
        session.save(user);
        // commit transaction
        transaction.commit();
        session = HibernateUtil.getSessionFactory().openSession();
        List < User > users = session.createQuery("from User", User.class).list();
        System.out.println(users.size());
		return users;
	}
}
