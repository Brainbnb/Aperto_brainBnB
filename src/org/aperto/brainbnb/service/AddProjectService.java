package org.aperto.brainbnb.service;

import java.sql.*;

import org.aperto.brainbnb.dto.Project;


public class AddProjectService {

	public static void addProjectToDatabase(Project p, String user) 
	{

		String projectName = p.getProjectName();
		String startDate = p.getStartDate();
		int budget = Integer.parseInt(p.getBudget());
		String endDate = p.getEndDate();
		int plancost = Integer.parseInt(p.getPlancost());
		String description = p.getDescription();

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
			System.out.println("employee: "+employeeID);
			String sqlProject = "SELECT MAX(Project_ID) FROM Projects";
			ResultSet resProject = stmt.executeQuery(sqlProject);
			while(resProject.next()){
				projectID = resProject.getInt(1) + 1;
			}
			System.out.println("Projekt: "+projectID);


			//Funktion, die letzte Project_ID rausfindet und +1 macht (für das neue Projekt)

//
//			String ps = "INSERT INTO Projects (Project_ID, Name, StartDate, EndDate, Budget, PlanCost, Description, Projectmanager) VALUES ("+projectID+",'"+projectName+",''"+startDate+",''"+endDate+"',"+budget+","+plancost+",'"+description+",'"+employeeID+")";
//			stmt.executeQuery(ps);
			
		      // the mysql insert statement
		      String query = "INSERT INTO Projects (Project_ID, Name, StartDate, EndDate, Budget, PlanCost, Description, Projectmanager)"
		        + " values (?, ?, ?, ?, ?, ?, ?, ?)";
		 
		      // create the mysql insert preparedstatement
		      PreparedStatement preparedStmt = con.prepareStatement(query);
				preparedStmt.setInt(1, projectID);//ID inkrementieren
				preparedStmt.setString(2, projectName);
				preparedStmt.setString(3, startDate);
				preparedStmt.setString(4, endDate);
				preparedStmt.setInt(5, budget);
				preparedStmt.setInt(6, plancost);
				preparedStmt.setString(7, description);
				preparedStmt.setInt(8, employeeID);

				System.out.println("SQL");
				System.out.println("ID: "+projectID);
				System.out.println("Description: "+description);
				System.out.println("name: "+projectName);
				System.out.println("start: "+startDate);
				System.out.println("ende: "+endDate);
				System.out.println("budget: "+budget);
				System.out.println("plancost: "+plancost);
				System.out.println("Description: "+description);
		      // execute the preparedstatement
		      preparedStmt.execute();
			
			
			System.out.println("endeCode");
			
			


//			String query = "INSERT INTO Projects (Project_ID, Name, StartDate, EndDate, Budget, PlanCost, Description, Projectmanager) VALUES (?,?,?,?,?,?,?,?)";
//			PreparedStatement dbStatement = null;
//			try {
//				dbStatement = con.prepareStatement(query);
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			// set parameters
//			try {
//				dbStatement.setInt(1, projectID);//ID inkrementieren
//				dbStatement.setString(2, projectName);
//				dbStatement.setString(3, startDate);
//				dbStatement.setString(4, endDate);
//				dbStatement.setInt(5, budget);
//				dbStatement.setInt(6, plancost);
//				dbStatement.setString(7, description);
//				dbStatement.setInt(8, employeeID);//gerade eingeloggter User
				//			} catch (Exception e) {
				//				e.printStackTrace();
				//			}
				//			//Execute Query
				//			try {
				//				if (dbStatement.executeUpdate(query) == 0) { 
				//					System.err.println("Nothing inserted"); 
				//				}
				//			} catch (Exception e) {
				//				// TODO Auto-generated catch block
				//				e.printStackTrace();
				//			}
				//
				//			//close connection
				//			try {
				//				dbStatement.close();
				//			} catch (Exception e) {
				//				// TODO Auto-generated catch block
				//				e.printStackTrace();
				//			}
				//			try {
				//				con.close();
				//			} catch (Exception e) {
				//				// TODO Auto-generated catch block
				//				e.printStackTrace();
				//			}


				//	         
				//	         ps.executeQuery();
				//	      con.close();  
				//	      }catch(Exception e)
				//	      {
				//	          e.printStackTrace();
				//	      }
				//	  }   

			con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}