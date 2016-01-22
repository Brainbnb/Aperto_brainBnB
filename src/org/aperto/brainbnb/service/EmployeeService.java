package org.aperto.brainbnb.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.aperto.brainbnb.dto.Employee;
import org.aperto.brainbnb.dto.Project;

public class EmployeeService {
	Employee lea = new Employee("Neuber", "Leana", "admin1", "Backend-Development", "resources/img/foto_Leana_Neuber.jpg",
			true);
	Employee silvia = new Employee("Calafuri", "Silvia", "admin2", "Frontend-Development", "resources/img/foto_Silvia_Calafuri.jpg",
			false);
	Employee fatme = new Employee("Chahrour", "Fatme", "admin3", "Requirements", "resources/img/User_Bild_2.jpg",
			false);
	Employee doha = new Employee("Akil", "Doha", "admin4", "Software-Engineering", "resources/img/User_Bild_2.jpg",
			false);
	Employee vera = new Employee("Nicolaisen", "Vera", "admin5", "Backend-Development", "resources/img/User_Bild_2.jpg",
			false);
	Employee sophie = new Employee("Sontia", "Sophie", "admin6", "Sales Manager", "resources/img/User_Bild_2.jpg",
			true);
	Employee channing = new Employee("Tatum", "Channing", "admin7", "Sales Manager", "resources/img/foto_ct.jpg",
			true);
	Employee ryan = new Employee("Gosling", "Ryan", "admin8", "Team Leader", "resources/img/foto_rg.jpg",
			true);
	Employee bradley = new Employee("Cooper", "Bradley", "admin9", "Developer", "resources/img/foto_bd.jpg",
			true);
	Employee orlando = new Employee("Bloom", "Orlando", "admin10", "Resource Investigator", "resources/img/foto_ob.jpg",
			true);
	
	ArrayList<Employee> employeeList = new ArrayList<Employee>();
	//Array<String, String> users = new HashMap<String, String>();
	public EmployeeService(){
		employeeList.add(lea);
		employeeList.add(silvia);
		employeeList.add(fatme);
		employeeList.add(doha);
		employeeList.add(vera);
		employeeList.add(sophie);
		employeeList.add(channing);
		employeeList.add(ryan);
		employeeList.add(bradley);
		employeeList.add(orlando);

	}
}
