package com.unknowns.hibernate.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

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

	@OneToOne
	@Cascade(CascadeType.ALL)
	Items items;
	
	public Company() {
		super();
	}

	public Company(String name, List<Workers> workers,Items items) {
		super();
		this.name = name;
		this.workers = workers;
		this.items = items;
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

	public Items getItems() {
		return items;
	}

	public void setItems(Items items) {
		this.items = items;
	}
	
	
}
