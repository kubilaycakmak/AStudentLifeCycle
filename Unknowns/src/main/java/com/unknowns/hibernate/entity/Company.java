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
public class Company {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	String name;

	@OneToMany(fetch = FetchType.EAGER)
	@Cascade(CascadeType.ALL)
	List<Workers> workers;

	public Company() {
		super();
	}

	public Company(String name, List<Workers> workers) {
		super();
		this.name = name;
		this.workers = workers;
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

	public List<Workers> getWorkers() {
		return workers;
	}

	public void setWorkers(List<Workers> workers) {
		this.workers = workers;
	}

}
