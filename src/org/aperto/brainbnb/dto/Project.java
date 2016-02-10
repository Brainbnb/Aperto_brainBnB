package org.aperto.brainbnb.dto;


public class Project {


	private String projectName;
	private String startDate;
	private String budget;
	private String endDate;
	private String plancost;
	private String description;


	public Project(String projectName, String startDate, String budget, String endDate, String plancost, String description) {
		this.projectName = projectName;
		this.startDate = startDate;
		this.budget = budget;
		this.endDate = endDate;
		this.plancost = plancost;
		this.description = description;
	}

	public Project() {

	}



	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getPlancost() {
		return plancost;
	}

	public void setPlancost(String plancost) {
		this.plancost = plancost;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}



}
