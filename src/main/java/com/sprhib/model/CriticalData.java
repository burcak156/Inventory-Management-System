package com.sprhib.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="CRITICALDATA")
public class CriticalData {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dataId;
	
	@Column
	private String interruptTolerationTime;
	
	@Column
	private String interruptAffectedApplication;

	@Column
	private String relatedModuls;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="APPLICATIONID")
	private Application application;
	
}
