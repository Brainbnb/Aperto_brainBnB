package org.aperto.brainbnb.service;

import java.util.ArrayList;

import org.aperto.brainbnb.dto.Project;
public class ProjectService {
	
	String startDate = "10/10/2015";
	String endDate = "10/02/2016";
	
	Project one = new Project("brainBnB",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of a project ressource planning tool for Aperto");
	Project two = new Project("Creative Workline GmbH",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project three = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project four = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project five = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project six = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project seven = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project eight = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project nine = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	Project ten = new Project("projectName",  "10/10/2015", "20000", "20/10/2016", "15000", "Development of...");
	
	private ArrayList<Project> projectList;

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
	
	public void addtoList(Project p){
		this.projectList.add(p);
	}

}
