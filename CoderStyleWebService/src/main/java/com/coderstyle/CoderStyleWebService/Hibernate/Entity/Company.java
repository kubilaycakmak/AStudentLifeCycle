package com.coderstyle.CoderStyleWebService.Hibernate.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
	

@Entity
@Table(name="Company")
@XmlRootElement
public class Company {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="cname")
	private String cname;
	
	@Column(name="caddress")
	private String caddress;
	
	@Column(name="cphone")
	private int cphone;
	
	@Column(name="cemployee")
	private int cemployee;
	
	public Company() {
		
	}

	public Company(int id,String cname, String caddress, int cphone, int cemployee) {
		super();
		this.id = id;
		this.cname = cname;
		this.caddress = caddress;
		this.cphone = cphone;
		this.cemployee = cemployee;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public int getCphone() {
		return cphone;
	}

	public void setCphone(int cphone) {
		this.cphone = cphone;
	}

	public int getCemployee() {
		return cemployee;
	}

	public void setCemployee(int cemployee) {
		this.cemployee = cemployee;
	}
	
	
}
