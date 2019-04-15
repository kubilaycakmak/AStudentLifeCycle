package com.unknowns.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="games")
public class Games {
	@Id
	@Column(name="idgames")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idgames;
	
	@Column(name="chargegames")
	int chargegames;
	
	@Column(name="givehappiness")
	int givehappiness;
	
	@Column(name="description")
	String description;
	
	public Games() {}
	public Games(int chargegames, int givehappiness, String description) {
		super();
		this.chargegames = chargegames;
		this.givehappiness = givehappiness;
		this.description = description;
	}

	public int getIdgames() {
		return idgames;
	}

	public void setIdgames(int idgames) {
		this.idgames = idgames;
	}

	public int getChargegames() {
		return chargegames;
	}

	public void setChargegames(int chargegames) {
		this.chargegames = chargegames;
	}

	public int getGivehappiness() {
		return givehappiness;
	}

	public void setGivehappiness(int givehappiness) {
		this.givehappiness = givehappiness;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
