package org.aperto.brainbnb.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.aperto.brainbnb.dto.Project;
import org.aperto.brainbnb.dto.User;

public class ProjectService {
	
	Project one = new Project(0001, "brainBnB", "Development of a project ressource planning tool for Aperto", "10/10/2015", "10/02/2016");
	Project two = new Project(0002, "Creative Workline GmbH", "Development of ....", "10/10/2015", "10/02/2016");
	
	ArrayList<Project> projectList = new ArrayList<Project>();
	//Array<String, String> users = new HashMap<String, String>();
	public ProjectService(){
		projectList.add(one);
		projectList.add(two);
	}
	public Project getProject(int i){
		Project project = projectList.get(i);
		return project;
	}
//	public ProjectService(){
//		users.put("Doha", "Doha Akil");
//		users.put("Fatme", "Fatme Chahrour");
//		users.put("Silvia", "Silvia Calafuri");
//		users.put("Sophie", "Sophie Sontia");
//		users.put("Vera", "Vera Nicolaisen");
//		users.put("Lea", "Leana Neuber");
//	}
//	
//	
//	public User getUserDetails(String userID){
//		User user = new User();
//		user.setUserName(users.get(userID));
//		user.setUserID(userID);
//		return user;
//	}
}
