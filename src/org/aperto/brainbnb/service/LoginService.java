package org.aperto.brainbnb.service;

import java.util.HashMap;

import org.aperto.brainbnb.dto.User;

public class LoginService {
	
	HashMap<String, User> users = new HashMap<String, User>();
	
	public LoginService(){
		users.put("Doha", new User("Doha", "Doha Akil", "resources/img/User_Bild_2.png"));
		users.put("Fatme", new User("Fatme", "Fatme Chahrour", "resources/img/User_Bild_2.png"));
		users.put("Silvia", new User("Silvia", "Silvia Calafuri", "resources/img/foto_Silvia_Calafuri.jpg"));
		users.put("Sophie", new User("Sophie", "Sophie Sontia", "resources/img/User_Bild_2.png"));
		users.put("Vera", new User("Vera", "Vera Nicolaisen", "resources/img/foto_Vera_Nicolaisen.jpg"));
		users.put("Lea", new User("Lea", "Leana Neuber", "resources/img/foto_Leana_Neuber.jpg"));
		

	}
	
	public boolean authenticate(String userID, String password){
		if ((userID.equals("Doha") || userID.equals("Fatme") || userID.equals("Silvia") ||userID.equals("Sophie")||userID.equals("Vera")||userID.equals("Lea")) && password.equals("admin")){
			return true;
		}
		return false;
	}
	
	public User getUserDetails(String userID){
		User user = new User(userID, users.get(userID).getUserName(), users.get(userID).getPicturePath());
//		user.setUserName(users.get(userID).getUserName());
//		user.setUserID(userID);
//		user.setPicturePath(users.get(userID).getPicturePath());
		return user;
	}


	
}

//hier wird die Datenbank angebunden (wenn gewollt), jetzt nur dummy methods