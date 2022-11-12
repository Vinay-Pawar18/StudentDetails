package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {
	@Id
	private int id;
	private String name;
	@Column(length = 1500)
	private String address;
	private Date addedDate;

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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public Student(String name, String address, Date addedDate) {
		super();
		this.id = new Random().nextInt(100000);
		this.name = name;
		this.address = address;
		this.addedDate = addedDate;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
