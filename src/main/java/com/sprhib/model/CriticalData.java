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

	
	public int getDataId() {
		return dataId;
	}


	public void setDataId(int dataId) {
		this.dataId = dataId;
	}


	public String getInterruptTolerationTime() {
		return interruptTolerationTime;
	}


	public void setInterruptTolerationTime(String interruptTolerationTime) {
		this.interruptTolerationTime = interruptTolerationTime;
	}


	public String getInterruptAffectedApplication() {
		return interruptAffectedApplication;
	}


	public void setInterruptAffectedApplication(String interruptAffectedApplication) {
		this.interruptAffectedApplication = interruptAffectedApplication;
	}


	public String getRelatedModuls() {
		return relatedModuls;
	}


	public void setRelatedModuls(String relatedModuls) {
		this.relatedModuls = relatedModuls;
	}


	public Application getApplication() {
		return application;
	}

	
	public void setApplication(Application application) {
		this.application = application;
	}
}
