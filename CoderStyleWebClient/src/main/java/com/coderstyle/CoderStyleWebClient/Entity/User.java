package com.coderstyle.CoderStyleWebClient.Entity;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class User {
	private int id;
	
	private String nick;
	
	private String password;

	private String email;

	private String firstname;

	private String lastname;
	
	private java.util.Date birthday;
	
	private int phone;
	
	private String knowledge;

	private String bio;
	
	private int cid;
	
	private int hintCode;
	
	public User() {}

	public User(String nick, String password, String email, String firstname, String lastname,java.util.Date birthday,
			int phone, String knowledge, String bio, int cid, int hintCode) {
		super();
		this.nick = nick;
		this.password = password;
		this.email = email;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthday = birthday;
		this.phone = phone;
		this.knowledge = knowledge;
		this.bio = bio;
		this.cid = cid;
		this.hintCode = hintCode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getKnowledge() {
		return knowledge;
	}

	public void setKnowledge(String knowledge) {
		this.knowledge = knowledge;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getHintCode() {
		return hintCode;
	}

	public void setHintCode(int hintCode) {
		this.hintCode = hintCode;
	}

	public java.util.Date getBirthday() {
		return birthday;
	}

	public void setBirthday(java.util.Date birthday) {
		this.birthday = birthday;
	}
	
	
	
}
