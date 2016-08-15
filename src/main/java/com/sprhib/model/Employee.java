package com.sprhib.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee {

	@Id
	private int employeeId;
	
	@Column
	private String employeeName;
	
}
