package com.unknowns.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="iduser")
	int iduser;
	
	@Column(name="nickname")
	String nickname;
	
	@Column(name="firstname")
	String firstname;
	
	@Column(name="lastname")
	String lastname;
	
	@Column(name="email")
	String email;
	
	@Column(name="password")
	String password;
	
	@Column(name="hintcode")
	int hintcode;
	
	@Column(name="age")
	int age;
	
	@Column(name="nativelanguage")
	String nativelanguage;
	
	@Column(name="money")
	int money;
	
	@Column(name="health")
	int health;
	
	@Column(name="strength")
	int strength;
	
	@Column(name="happiness")
	int happiness;
	
	@Column(name="xp")
	int xp;
	
	@Column(name="bankid")
	@OneToOne
	Bank bankid;
	
	public User() {}

	public User(String nickname, String firstname, String lastname, String email, String password, int hintcode,
			int age, String nativelanguage, int money, int health, int strength, int happiness, int xp, Bank bankid) {
		super();
		this.nickname = nickname;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
		this.hintcode = hintcode;
		this.age = age;
		this.nativelanguage = nativelanguage;
		this.money = money;
		this.health = health;
		this.strength = strength;
		this.happiness = happiness;
		this.xp = xp;
		this.bankid = bankid;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public int getHintcode() {
		return hintcode;
	}

	public void setHintcode(int hintcode) {
		this.hintcode = hintcode;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getNativelanguage() {
		return nativelanguage;
	}

	public void setNativelanguage(String nativelanguage) {
		this.nativelanguage = nativelanguage;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getHealth() {
		return health;
	}

	public void setHealth(int health) {
		this.health = health;
	}

	public int getStrength() {
		return strength;
	}

	public void setStrength(int strength) {
		this.strength = strength;
	}

	public int getHappiness() {
		return happiness;
	}

	public void setHappiness(int happiness) {
		this.happiness = happiness;
	}

	public int getXp() {
		return xp;
	}

	public void setXp(int xp) {
		this.xp = xp;
	}

	public Bank getBankid() {
		return bankid;
	}

	public void setBankid(Bank bankid) {
		this.bankid = bankid;
	}
	
	
	
}
