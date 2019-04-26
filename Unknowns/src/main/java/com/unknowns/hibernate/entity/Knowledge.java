package com.unknowns.hibernate.entity;

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
	public Knowledge(String kname, int level) {
		super();
		this.kname = kname;
		this.level = level;
	}
	public Knowledge() {
		super();
	}
	
	
}
