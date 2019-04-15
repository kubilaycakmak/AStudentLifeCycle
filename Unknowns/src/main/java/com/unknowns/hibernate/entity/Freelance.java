package com.unknowns.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Freelance {
	@Id
	@Column(name = "idjob")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idjob;

	@Column(name = "salary")
	int salary;

	@Column(name = "needhealth")
	int needhealth;

	@Column(name = "needhappiness")
	int needhappiness;

	@Column(name = "needstrength")
	int needstrength;

	@Column(name = "xp")
	int xp;

	@Column(name = "description")
	String description;
	
	public Freelance() {}
	

	public Freelance(int salary, int needhealth, int needhappiness, int needstrength, int xp, String description) {
		super();
		this.salary = salary;
		this.needhealth = needhealth;
		this.needhappiness = needhappiness;
		this.needstrength = needstrength;
		this.xp = xp;
		this.description = description;
	}


	public int getIdjob() {
		return idjob;
	}

	public void setIdjob(int idjob) {
		this.idjob = idjob;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getNeedhealth() {
		return needhealth;
	}

	public void setNeedhealth(int needhealth) {
		this.needhealth = needhealth;
	}

	public int getNeedhappiness() {
		return needhappiness;
	}

	public void setNeedhappiness(int needhappiness) {
		this.needhappiness = needhappiness;
	}

	public int getNeedstrength() {
		return needstrength;
	}

	public void setNeedstrength(int needstrength) {
		this.needstrength = needstrength;
	}

	public int getXp() {
		return xp;
	}

	public void setXp(int xp) {
		this.xp = xp;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
