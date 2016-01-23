package org.aperto.brainbnb.service;

import java.util.ArrayList;

import org.aperto.brainbnb.dto.Project;
public class ProjectService {
	
	Project one = new Project(0001, "brainBnB", "Development of a project ressource planning tool for Aperto", "10/10/2015", "Developer", "10/02/2016");
	Project two = new Project(0002, "Creative Workline GmbH", "Development of ....", "10/10/2015", "Manager","10/02/2016");
	
	ArrayList<Project> projectList;

	public ArrayList<Project> generateProjectList(){
		this.projectList = new ArrayList<Project>();
		this.projectList.add(this.one);
		this.projectList.add(this.two);
		return this.projectList;
	}
}
