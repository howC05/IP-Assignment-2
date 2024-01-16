package com.tutorial.model;

public class Instructor{
	
	private String name;
	private String gender;
	private String specialty;
	private int id;
	
	public Instructor() {
		
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getSpecialty() {
		return specialty;
	}
	
	@Override
	public String toString() {
		return "Instructor [id = " + id + ", name = " + name + ", gender = " + gender + ", specialty = " + specialty + "]";
	}
}