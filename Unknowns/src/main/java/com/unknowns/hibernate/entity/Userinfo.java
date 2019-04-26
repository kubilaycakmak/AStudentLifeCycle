package com.unknowns.hibernate.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;


@Entity
public class Userinfo {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	
	int xp;
	int money;
	int type;
	int stamina;
	
	@OneToMany(fetch = FetchType.EAGER)
	@Cascade(CascadeType.ALL)
	List<Knowledge> knowledge;

	public Userinfo() {
		super();
	}

	public Userinfo( int xp, int money, int type, int stamina, List<Knowledge> knowledge) {
		super();
		this.xp = xp;
		this.money = money;
		this.type = type;
		this.stamina = stamina;
		this.knowledge = knowledge;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getXp() {
		return xp;
	}

	public void setXp(int xp) {
		this.xp = xp;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getStamina() {
		return stamina;
	}

	public void setStamina(int stamina) {
		this.stamina = stamina;
	}

	public List<Knowledge> getKnowledge() {
		return knowledge;
	}

	public void setKnowledge(List<Knowledge> knowledge) {
		this.knowledge = knowledge;
	}
	
	
}
