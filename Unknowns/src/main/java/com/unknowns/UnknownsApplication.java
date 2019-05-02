package com.unknowns;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.sun.org.apache.xalan.internal.xsltc.runtime.MessageHandler;
import com.unknowns.Timers.CompanyMoney;
import com.unknowns.hibernate.entity.Company;
import com.unknowns.websocket.EndpointServerDemo;
import com.unknowns.websocket.MessageHandlerDemo;

@SpringBootApplication
public class UnknownsApplication {

	public static void main(String[] args) {
		SpringApplication.run(UnknownsApplication.class, args);
		CompanyMoney companyMoney = new CompanyMoney();
		companyMoney.TimerMoney();
		new EndpointServerDemo();
		
	}
}
