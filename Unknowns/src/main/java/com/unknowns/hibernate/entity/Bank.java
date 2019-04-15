package com.unknowns.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bank {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "current")
	int current;

	@Column(name = "saving")
	int saving;

	public Bank() {
	}

	public Bank(int current, int saving) {
		super();
		this.current = current;
		this.saving = saving;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCurrent() {
		return current;
	}

	public void setCurrent(int current) {
		this.current = current;
	}

	public int getSaving() {
		return saving;
	}

	public void setSaving(int saving) {
		this.saving = saving;
	}

}
