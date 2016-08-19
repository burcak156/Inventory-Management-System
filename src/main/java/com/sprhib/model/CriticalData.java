package com.sprhib.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="criticaldata")
public class CriticalData implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer dataId;
	
	@Column
	private String interruptTolerationTime;
	
	@Column
	private String relatedModuls;	
	
	@Column
	private String criticalHours;
	
	@Column
	private String criticalDays;
	
	@Column
	private String affectedApplications;
	
	@Column
	private String process;
	
	public Integer getDataId() {
		return dataId;
	}

	public void setDataId(Integer dataId) {
		this.dataId = dataId;
	}

	public String getInterruptTolerationTime() {
		return interruptTolerationTime;
	}

	public void setInterruptTolerationTime(String interruptTolerationTime) {
		this.interruptTolerationTime = interruptTolerationTime;
	}

	public String getRelatedModuls() {
		return relatedModuls;
	}

	public void setRelatedModuls(String relatedModuls) {
		this.relatedModuls = relatedModuls;

	}

	public String getCriticalHours() {
		return criticalHours;
	}

	public void setCriticalHours(String criticalHours) {
		this.criticalHours = criticalHours;
	}

	public String getCriticalDays() {
		return criticalDays;
	}

	public void setCriticalDays(String criticalDays) {
		this.criticalDays = criticalDays;
	}

	public String getAffectedApplications() {
		return affectedApplications;
	}

	public void setAffectedApplications(String affectedApplications) {
		this.affectedApplications = affectedApplications;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}
}