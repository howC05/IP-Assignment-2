package com.tutorial.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="program")
public class Program{
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="day")
	private String day;
	
	@Column(name="time")
	private String time;
	
	@Column(name="note")
	private String note;
	
	@Column(name="instructor_id")
	private int instructor_id ;
	
	public Program() {
		
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



	public String getDay() {
		return day;
	}



	public void setDay(String day) {
		this.day = day;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}



	public String getNote() {
		return note;
	}



	public void setNote(String note) {
		this.note = note;
	}



	public int getInstructor_id() {
		return instructor_id;
	}



	public void setInstructor_id(int instructor_id) {
		this.instructor_id = instructor_id;
	}



	@Override
    public String toString() {
        return "Program [id=" + id + ", name=" + name + ", day=" + day + ", time=" + time + ", note=" + note + ", instructor_id=" + instructor_id + "]";
    } 
	
}