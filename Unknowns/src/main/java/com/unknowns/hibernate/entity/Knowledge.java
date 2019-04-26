package com.unknowns.hibernate.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Knowledge {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int id;
	
	String kname;
	int level;
	Date date;
	
	
	public Knowledge() {
		super();
	}


	public Knowledge(String kname, int level, Date date) {
		super();
		this.kname = kname;
		this.level = level;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getKname() {
		return kname;
	}


	public void setKname(String kname) {
		this.kname = kname;
	}


	public int getLevel() {
		return level;
	}


	public void setLevel(int level) {
		this.level = level;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
