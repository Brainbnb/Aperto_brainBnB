package org.aperto.brainbnb.service;

import java.util.HashMap;

import org.aperto.brainbnb.dto.User;

public class LoginService {
	
	HashMap<String, String> users = new HashMap<String, String>();
	
	public LoginService(){
		users.put("Doha", "Doha Akil");
		users.put("Fatme", "Fatme Chahrour");
		users.put("Silvia", "Silvia Calafuri");
		users.put("Sophie", "Sophie Sontia");
		users.put("Vera", "Vera Nicolaisen");
		users.put("Lea", "Leana Neuber");
	}
	
	public boolean authenticate(String userID, String password){
		if ((userID.equals("Doha") || userID.equals("Fatme") || userID.equals("Silvia") ||userID.equals("Sophie")||userID.equals("Vera")||userID.equals("Lea")) && password.equals("admin")){
			return true;
		}
		return false;
	}
	
	public User getUserDetails(String userID){
		User user = new User();
		user.setUserName(users.get(userID));
		user.setUserID(userID);
		return user;
	}
	
}

//hier wird die Datenbank angebunden (wenn gewollt), jetzt nur dummy methods