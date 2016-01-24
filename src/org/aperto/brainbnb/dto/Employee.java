package org.aperto.brainbnb.dto;



public class Employee {
	private String name;
	private String password;
	private String jobTitle;
	private String picturePath;
	private boolean available;
//	private HashMap<String, Integer> skills;
	
	public Employee(String name, String password, String jobTitle, String picturePath,
			boolean available) {
		this.name = name;
		this.password = password;
		this.jobTitle = jobTitle;
		this.picturePath = picturePath;
		this.available = available;

	}
	public Employee() {
		
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getPicturePath() {
		return picturePath;
	}
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}

}
