package org.aperto.brainbnb.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DeleteProjectService {

	public static void deleteProject() {
		
		int projectID = 0;
		
		try{
			//loading drivers for mysql
			Class.forName("com.mysql.jdbc.Driver");
			//creating connection with the database 
			Connection con=DriverManager.getConnection
					("jdbc:mysql://db.f4.htw-berlin.de:3306/_s0551133__BrainBnB", "s0551133", "brainbnb");
			Statement stmt = con.createStatement();

			String sqlProject = "SELECT MAX(Project_ID) FROM Projects";
			ResultSet resProject = stmt.executeQuery(sqlProject);
			while(resProject.next()){
			projectID = resProject.getInt(1);
			}
			
			String query = "DELETE FROM Projects WHERE project_ID ='"+projectID+"'";
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.execute();		
		
			con.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}