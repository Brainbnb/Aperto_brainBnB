package org.aperto.brainbnb.service;

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException; 

import java.util.HashMap;

import org.aperto.brainbnb.dto.User;

public class LoginService {
	
	public static boolean validate(String name, String pass) {          
        boolean status = false;  
        Connection conn = null;  
        PreparedStatement pst = null;  
        ResultSet rs = null;  
  
      
        String driver = "com.mysql.jdbc.Driver";  
          
        try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager.getConnection("jdbc:mysql://db.f4.htw-berlin.de:3306/_s0551133__BrainBnB", "s0551133", "brainbnb");  
  
            pst = conn  
                    .prepareStatement("select * from BrainbnbLogin where user=? and password=?");  
            pst.setString(1, name);  
            pst.setString(2, pass);  
  
            rs = pst.executeQuery();  
            status = rs.next();  
  
        } catch (Exception e) {  
            System.out.println(e);  
        } finally {  
            if (conn != null) {  
                try {  
                    conn.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (pst != null) {  
                try {  
                    pst.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (rs != null) {  
                try {  
                    rs.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
        }  
        return status;  
    }  
	
//	HashMap<String, User> users = new HashMap<String, User>();
//	
//	public LoginService(){
//		users.put("Doha", new User("Doha", "Doha Akil", "resources/img/User_Bild_2.png"));
//		users.put("Fatme", new User("Fatme", "Fatme Chahrour", "resources/img/User_Bild_2.png"));
//		users.put("Silvia", new User("Silvia", "Silvia Calafuri", "resources/img/foto_Silvia_Calafuri.jpg"));
//		users.put("Sophie", new User("Sophie", "Sophie Sontia", "resources/img/User_Bild_2.png"));
//		users.put("Vera", new User("Vera", "Vera Nicolaisen", "resources/img/foto_Vera_Nicolaisen.jpg"));
//		users.put("Lea", new User("Lea", "Leana Neuber", "resources/img/foto_Leana_Neuber.jpg"));
//		
//
//	}
//	
//	public boolean authenticate(String userID, String password){
//		if ((userID.equals("Doha") || userID.equals("Fatme") || userID.equals("Silvia") ||userID.equals("Sophie")||userID.equals("Vera")||userID.equals("Lea")) && password.equals("admin")){
//			return true;
//		}
//		return false;
//	}
//	
//	public User getUserDetails(String userID){
//		User user = new User(userID, users.get(userID).getUserName(), users.get(userID).getPicturePath());
////		user.setUserName(users.get(userID).getUserName());
////		user.setUserID(userID);
////		user.setPicturePath(users.get(userID).getPicturePath());
//		return user;
//	}
//

	
}

//hier wird die Datenbank angebunden (wenn gewollt), jetzt nur dummy methods