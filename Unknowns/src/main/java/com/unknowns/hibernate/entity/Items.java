package com.unknowns.hibernate.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Items {
	@Id
	int id;
	
	int count1;
	int count2;
	int count3;
	int count4;
	int count5;
	public Items() {
		
	}
	public Items(int count1, int count2, int count3, int count4, int count5) {
		super();
		this.count1 = count1;
		this.count2 = count2;
		this.count3 = count3;
		this.count4 = count4;
		this.count5 = count5;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCount1() {
		return count1;
	}
	public void setCount1(int count1) {
		this.count1 = count1;
	}
	public int getCount2() {
		return count2;
	}
	public void setCount2(int count2) {
		this.count2 = count2;
	}
	public int getCount3() {
		return count3;
	}
	public void setCount3(int count3) {
		this.count3 = count3;
	}
	public int getCount4() {
		return count4;
	}
	public void setCount4(int count4) {
		this.count4 = count4;
	}
	public int getCount5() {
		return count5;
	}
	public void setCount5(int count5) {
		this.count5 = count5;
	}
	

}
