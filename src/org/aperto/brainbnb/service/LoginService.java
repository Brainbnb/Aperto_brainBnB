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
	
	
}

//hier wird die Datenbank angebunden (wenn gewollt), jetzt nur dummy methods