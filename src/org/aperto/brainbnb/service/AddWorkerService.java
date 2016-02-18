package org.aperto.brainbnb.service;

import java.sql.*;

public class AddWorkerService {
	public static void addWorker(String user,String project) 
	{
		int projectID = 0;
		int employeeID = 0;
		try{

			//loading drivers for mysql
			Class.forName("com.mysql.jdbc.Driver");

			//creating connection with the database 
			Connection con=DriverManager.getConnection
					("jdbc:mysql://db.f4.htw-berlin.de:3306/_s0551133__BrainBnB", "s0551133", "brainbnb");
			Statement stmt = con.createStatement();

			String sqlEmployee = "SELECT Employee_ID FROM Employees WHERE Firstname='"+user+"'";
			ResultSet resEmployee = stmt.executeQuery(sqlEmployee);
			while(resEmployee.next()){
				employeeID = resEmployee.getInt(1);
			}


			String sqlProject = "SELECT Project_ID FROM Projects WHERE Name='"+project+"'";
			ResultSet resProject = stmt.executeQuery(sqlProject);
			while(resProject.next()){
				projectID = resProject.getInt(1);
			}

			String query = "INSERT INTO work_for (Project_ID, Employee_ID)"
					+ " values (?, ?)";

			// create the mysql insert preparedstatement
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setInt(1, projectID);//ID inkrementieren
			preparedStmt.setInt(2, employeeID);

			// execute the preparedstatement
			preparedStmt.execute();;
			con.close();  
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}   
}
