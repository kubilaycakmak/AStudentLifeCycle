package com.coderstyle.CoderStyleWebService.Hibernate.Utility;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.coderstyle.CoderStyleWebService.Controller.MyResource;
import com.coderstyle.CoderStyleWebService.Hibernate.Entity.*;

public class HibernateQueries {
	Transaction transaction;
	Session session;
	Date date;
	public HibernateQueries() {
		
	}
	public List<User> allUsers(){
		transaction = null;
        session = HibernateUtil.getSessionFactory().openSession();
        date = new Date("04/02/1997");
        // start a transaction
        List <Company> companies = session.createQuery("from Company where id = 1",Company.class).list();
        Company company = companies.get(0);
        User user = new User("kadir1234@gmail.com","kadir12345","kadiraydemir19907@gmail.com","kadir","aydemir",date,12345,"java","Best",company,1234);
        Companyrole companyrole = new Companyrole(company, "java", 2, "asdasd", 1200,date );
        transaction = session.beginTransaction();
        session.save(user);
        session.save(companyrole);
        // commit transaction
        transaction.commit();
        session = HibernateUtil.getSessionFactory().openSession();
        List < User > users = session.createQuery("from User", User.class).list();
        List <Companyrole> companiesr = session.createQuery("from Companyrole",Companyrole.class).list();

		return users;
	}
	
	public User login(User userCheck) {
		transaction = null;
		session = HibernateUtil.getSessionFactory().openSession();
		List<User> user =  session.createQuery("from User where nick = '" +userCheck.getNick()+"' and password = '" +userCheck.getPassword()+ "'",User.class).list();
		User tempuser = new User();
		tempuser.setId(0);
		tempuser.setNick(userCheck.getNick());
		user.add(tempuser);
		return user.get(0);
	}
}
