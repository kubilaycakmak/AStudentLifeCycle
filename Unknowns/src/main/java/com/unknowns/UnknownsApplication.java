package com.unknowns;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.unknowns.Timers.Bank;
import com.unknowns.Timers.CompanyMoney;
import com.unknowns.Timers.TopList;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class UnknownsApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		TopList.Top5List();
		CompanyMoney.TimerMoney();
		Bank.BankTimer();
		return application.sources(UnknownsApplication.class);
	}

	public static void main(String[] args) {
		TopList.Top5List();
		CompanyMoney.TimerMoney();
		Bank.BankTimer();
		SpringApplication.run(UnknownsApplication.class, args);
	}
}
