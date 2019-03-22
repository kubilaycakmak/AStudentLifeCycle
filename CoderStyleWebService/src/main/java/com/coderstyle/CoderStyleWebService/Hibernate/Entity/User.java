package com.coderstyle.CoderStyleWebService.Hibernate.Entity;

import java.util.Date;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@Table(name="User")
@XmlRootElement
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="nick")
	private String nick;
	
	@Column(name="password")
	private String password;
	
	@Column(name="email")
	private String email;
	
	@Column(name="firstname")
	private String firstname;
	
	@Column(name="lastname")
	private String lastname;
	
	@Column(name="birthday")
	private Date birthday;
	
	@Column(name="phone")
	private int phone;
	
	@Column(name="knowledge")
	private String knowledge;
	
	@Column(name="bio")
	private String bio;
	
	@ManyToOne(targetEntity=Company.class ,cascade =CascadeType.ALL)
	@JoinColumn(name="cid")
	private Company cid;
	
	@Column(name="hintCode")
	private int hintCode;
	
	public User() {}
	
	public User(String nick, String password, String email, String firstname, String lastname,Date birthday,
			int phone, String knowledge, String bio, Company cid, int hintCode) {
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

	public Company getCid() {
		return cid;
	}

	public void setCid(Company cid) {
		this.cid = cid;
	}

	public int getHintCode() {
		return hintCode;
	}

	public void setHintCode(int hintCode) {
		this.hintCode = hintCode;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	
	
}
