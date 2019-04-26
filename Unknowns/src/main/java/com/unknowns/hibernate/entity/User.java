package com.unknowns.hibernate.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	String name;
	String lastname;
	String nickname;
	String email;
	String password;
	String hintcode;
	
	@OneToOne
	Userinfo userinfo;
	public User() {
		
	}

	public User(String name, String lastname, String email, String nickname, String password, String hintcode,Userinfo userinfo) {
		super();
		this.userinfo = userinfo;
		this.name = name;
		this.lastname = lastname;
		this.nickname = nickname;
		this.email = email;
		this.password = password;
		this.hintcode = hintcode;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHintcode() {
		return hintcode;
	}

	public void setHintcode(String hintcode) {
		this.hintcode = hintcode;
	}
	
	
}
