package org.aperto.brainbnb.service;

import java.util.ArrayList;

import org.aperto.brainbnb.dto.Project;
public class ProjectService {
	
	String startDate = "10/10/2015";
	String endDate = "10/02/2016";
	
	Project one = new Project(1, "brainBnB", "Development of a project ressource planning tool for Aperto", "10/10/2015", "Developer", "10/02/2016");
	Project two = new Project(2, "Creative Workline GmbH", "Development of ....", "10/10/2015", "Manager","10/02/2016");
	Project three = new Project(3, "projectName", "description", startDate, "role", endDate);
	Project four = new Project(4, "projectName", "description", startDate, "role", endDate);
	Project five = new Project(5, "projectName", "description", startDate, "role", endDate);
	Project six = new Project(6, "projectName", "description", startDate, "role", endDate);
	Project seven = new Project(7, "projectName", "description", startDate, "role", endDate);
	Project eight = new Project(8, "projectName", "description", startDate, "role", endDate);
	Project nine = new Project(9, "projectName", "description", startDate, "role", endDate);
	Project ten = new Project(10, "projectName", "description", startDate, "role", endDate);
	
	ArrayList<Project> projectList;

	public ArrayList<Project> generateProjectList(){
		this.projectList = new ArrayList<Project>();
		this.projectList.add(this.one);
		this.projectList.add(this.two);
		this.projectList.add(this.three);
		this.projectList.add(this.four);
		this.projectList.add(this.five);
		this.projectList.add(this.six);
		this.projectList.add(this.seven);
		this.projectList.add(this.eight);
		this.projectList.add(this.nine);
		this.projectList.add(this.ten);
		
		return this.projectList;
	}
}
