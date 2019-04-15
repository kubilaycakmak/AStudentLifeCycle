package com.unknowns.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Fastfood {
	@Id
	@Column(name="idfastfood")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int idfastfood;
	
	@Column(name="charge")
	int charge;
	
	@Column(name="givehealth")
	int givehealth;
	
	@Column(name="description")
	String description;
	
	public Fastfood() {}
	
	public Fastfood(int charge, int givehealth, String description) {
		super();
		this.charge = charge;
		this.givehealth = givehealth;
		this.description = description;
	}


	public int getIdfastfood() {
		return idfastfood;
	}

	public void setIdfastfood(int idfastfood) {
		this.idfastfood = idfastfood;
	}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public int getGivehealth() {
		return givehealth;
	}

	public void setGivehealth(int givehealth) {
		this.givehealth = givehealth;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
