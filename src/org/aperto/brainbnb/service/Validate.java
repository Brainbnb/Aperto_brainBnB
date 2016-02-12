package org.aperto.brainbnb.service;

import java.sql.*;

public class Validate
 {
     public static boolean checkUser(String user,String password) 
     {
      boolean st =false;
      try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://db.f4.htw-berlin.de:3306/_s0551133__BrainBnB", "s0551133", "brainbnb");
         PreparedStatement ps =con.prepareStatement
                             ("SELECT Firstname, Password FROM Employees WHERE Firstname=? and Password=?");
         ps.setString(1, user);
         ps.setString(2, password);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
      con.close();  
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
}