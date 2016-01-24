package org.aperto.brainbnb.service;

import java.util.ArrayList;

import org.aperto.brainbnb.dto.Employee;
import org.aperto.brainbnb.dto.User;

public class EmployeeService {
	Employee lea = new Employee("Leana Neuber", "admin1", "Backend-Development", "resources/img/foto_Leana_Neuber.jpg",
			true);
	Employee silvia = new Employee("Silvia Calafuri", "admin2", "Frontend-Development", "resources/img/foto_Silvia_Calafuri.jpg",
			false);
	Employee fatme = new Employee("Fatme Chahrour", "admin3", "Requirements", "resources/img/User_Bild_1.png",
			false);
	Employee doha = new Employee("Doha Akil", "admin4", "Software-Engineering", "resources/img/User_Bild_1.png",
			false);
	Employee vera = new Employee("Vera Nicolaisen", "admin5", "Backend-Development", "resources/img/User_Bild_1.png",
			false);
	Employee sophie = new Employee("Sophie Sontia", "admin6", "Sales Manager", "resources/img/User_Bild_1.png",
			true);
	Employee channing = new Employee("Channing Tatum", "admin7", "Sales Manager", "resources/img/foto_ct.jpg",
			true);
	Employee ryan = new Employee("Ryan Gossling", "admin8", "Team Leader", "resources/img/foto_rg.jpg",
			true);
	Employee bradley = new Employee("Bradley Cooper", "admin9", "Developer", "resources/img/foto_bd.jpg",
			true);
	Employee orlando = new Employee("Orlando Bloom", "admin10", "Resource Investigator", "resources/img/foto_ob.jpg",
			true);
	
	ArrayList<Employee> employeeList;
	//Array<String, String> users = new HashMap<String, String>();
	
	public ArrayList<Employee> generateEmployeeList(){
		this.employeeList = new ArrayList<Employee>();
		employeeList.add(this.lea);
		employeeList.add(this.silvia);
		employeeList.add(this.fatme);
		employeeList.add(this.doha);
		employeeList.add(this.vera);
		employeeList.add(this.sophie);
		employeeList.add(this.channing);
		employeeList.add(this.ryan);
		employeeList.add(this.bradley);
		employeeList.add(this.orlando);
		return this.employeeList;
	}
	
	public Employee getEmployeeDetails(String name){
		Employee employee = new Employee();
		for(int i = 0; i < employeeList.size(); i++){
			if(name.equals(employeeList.get(i).getName())){
				return employeeList.get(i);
			}
		}
		return employee;
	}
}
