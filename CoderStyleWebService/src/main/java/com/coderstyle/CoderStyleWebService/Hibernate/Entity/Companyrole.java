package com.coderstyle.CoderStyleWebService.Hibernate.Entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="Companyrole")
@XmlRootElement
public class Companyrole {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="rid")
	private int rid;
	
	@ManyToOne(targetEntity=Company.class ,cascade =CascadeType.ALL)
	@JoinColumn(name="cid")
	private Company cid;
	
	@Column(name="crole")
	private String crole;
	
	@Column(name="cneedcount")
	private int cneedcount;
	
	@Column(name="jdetail")
	private String jdetail;
	
	@Column(name="csalary")
	private int csalary;
	
	@Column(name="clastdate")
	private Date clastdate;

	public Companyrole() {
		
	}
	public Companyrole(Company cid, String crole, int cneedcount, String jdetail, int csalary,
			Date clastdate) {
		super();
		this.cid = cid;
		this.crole = crole;
		this.cneedcount = cneedcount;
		this.jdetail = jdetail;
		this.csalary = csalary;
		this.clastdate = clastdate;
	}

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public Company getCid() {
		return cid;
	}

	public void setCid(Company cid) {
		this.cid = cid;
	}

	public String getCrole() {
		return crole;
	}

	public void setCrole(String crole) {
		this.crole = crole;
	}

	public int getCneedcount() {
		return cneedcount;
	}

	public void setCneedcount(int cneedcount) {
		this.cneedcount = cneedcount;
	}

	public String getJdetail() {
		return jdetail;
	}

	public void setJdetail(String jdetail) {
		this.jdetail = jdetail;
	}

	public int getCsalary() {
		return csalary;
	}

	public void setCsalary(int csalary) {
		this.csalary = csalary;
	}

	public Date getClastdate() {
		return clastdate;
	}

	public void setClastdate(Date clastdate) {
		this.clastdate = clastdate;
	}
	
	
	
	
}
