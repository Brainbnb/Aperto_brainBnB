package org.aperto.brainbnb.dto;


public class Project {
	

	private int projectID;
	private String projectName;
	private String description;
	private String startDate;
	private String role;
	private String endDate;
	
	public Project(Integer projectID, String projectName, String description, String startDate, String role, String endDate) {
		this.projectID = projectID;
		this.projectName = projectName;
		this.description = description;
		this.startDate = startDate;
		this.role = role;
		this.endDate = endDate;
	}
	
	public Project() {
		
	}

	public int getProjectID() {
		return projectID;
	}
	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	
	
}
