package com.unknowns.hibernate.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Workers {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	int lvl;

	public Workers() {
		super();
	}

	public Workers(int lvl) {
		super();
		this.lvl = lvl;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
	
	
}
