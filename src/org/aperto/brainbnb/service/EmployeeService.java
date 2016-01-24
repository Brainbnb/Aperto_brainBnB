package org.aperto.brainbnb.service;

import java.util.ArrayList;

import org.aperto.brainbnb.dto.Employee;

public class EmployeeService {
	Employee lea = new Employee("Neuber", "Leana", "admin1", "Backend-Development", "resources/img/foto_Leana_Neuber.jpg",
			true);
	Employee silvia = new Employee("Calafuri", "Silvia", "admin2", "Frontend-Development", "resources/img/foto_Silvia_Calafuri.jpg",
			false);
	Employee fatme = new Employee("Chahrour", "Fatme", "admin3", "Requirements", "resources/img/User_Bild_1.png",
			false);
	Employee doha = new Employee("Akil", "Doha", "admin4", "Software-Engineering", "resources/img/User_Bild_1.png",
			false);
	Employee vera = new Employee("Nicolaisen", "Vera", "admin5", "Backend-Development", "resources/img/User_Bild_1.png",
			false);
	Employee sophie = new Employee("Sontia", "Sophie", "admin6", "Sales Manager", "resources/img/User_Bild_1.png",
			true);
	Employee channing = new Employee("Tatum", "Channing", "admin7", "Sales Manager", "resources/img/foto_ct.jpg",
			true);
	Employee ryan = new Employee("Gosling", "Ryan", "admin8", "Team Leader", "resources/img/foto_rg.jpg",
			true);
	Employee bradley = new Employee("Cooper", "Bradley", "admin9", "Developer", "resources/img/foto_bd.jpg",
			true);
	Employee orlando = new Employee("Bloom", "Orlando", "admin10", "Resource Investigator", "resources/img/foto_ob.jpg",
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
}