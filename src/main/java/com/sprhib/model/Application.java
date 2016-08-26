package com.sprhib.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="application")
public class Application implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer applicationId;
	
	@Column
	private String applicationCode;
	
	@Column
	private String applicationName;
	
	@Column
	private String applicationNutShell;

	@Column
	private String applicationHardwarePlatform;

	@Column
	private String applicationOS;
	
	@Column
	private String applicationServer;
	
	@Column
	private String applicationBrowser;
	
	@Column
	private String applicationDatabase;
	
	@Column
	private String applicationProgrammingLang;
	
	@Column
	private String applicationAuthorization;
	
	@Column
	private String applicationCommonUserCode;

	@Column
	private Integer applicationScreenNumber;
	
	@Column
	private Integer applicationReportNumber;
	
	@Column
	private String applicationAlternativeApp;
	
	@Column
	private String applicationDirection;
	
	@Column
	private String applicationUnit;
	
	@Column
	private String applicationDevelopers;
	
	@Column
	private String applicationOfficer;
	
	@Column
	private String applicationSupport;

	@Column
	private Integer applicationUserCount;
	
	@OneToOne(mappedBy = "application", cascade = CascadeType.ALL)
	private CriticalData criticalData;
	

	public Integer getApplicationId() {
		return applicationId;
	}

	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}

	public String getApplicationCode() {
		return applicationCode;
	}

	public void setApplicationCode(String applicationCode) {
		this.applicationCode = applicationCode;
	}

	public String getApplicationName() {
		return applicationName;
	}

	public void setApplicationName(String applicationName) {
		this.applicationName = applicationName;
	}

	public String getApplicationNutShell() {
		return applicationNutShell;
	}

	public void setApplicationNutShell(String applicationNutShell) {
		this.applicationNutShell = applicationNutShell;
	}

	public String getApplicationHardwarePlatform() {
		return applicationHardwarePlatform;
	}

	public void setApplicationHardwarePlatform(String applicationHardwarePlatform) {
		this.applicationHardwarePlatform = applicationHardwarePlatform;
	}

	public String getApplicationOS() {
		return applicationOS;
	}

	public void setApplicationOS(String applicationOS) {
		this.applicationOS = applicationOS;
	}

	public String getApplicationServer() {
		return applicationServer;
	}

	public void setApplicationServer(String applicationServer) {
		this.applicationServer = applicationServer;
	}

	public String getApplicationBrowser() {
		return applicationBrowser;
	}

	public void setApplicationBrowser(String applicationBrowser) {
		this.applicationBrowser = applicationBrowser;
	}

	public String getApplicationDatabase() {
		return applicationDatabase;
	}

	public void setApplicationDatabase(String applicationDatabase) {
		this.applicationDatabase = applicationDatabase;
	}

	public String getApplicationProgrammingLang() {
		return applicationProgrammingLang;
	}

	public void setApplicationProgrammingLang(String applicationProgrammingLang) {
		this.applicationProgrammingLang = applicationProgrammingLang;
	}

	public String getApplicationAuthorization() {
		return applicationAuthorization;
	}

	public void setApplicationAuthorization(String applicationAuthorization) {
		this.applicationAuthorization = applicationAuthorization;
	}

	public String getApplicationCommonUserCode() {
		return applicationCommonUserCode;
	}

	public void setApplicationCommonUserCode(String applicationCommonUserCode) {
		this.applicationCommonUserCode = applicationCommonUserCode;
	}

	public Integer getApplicationScreenNumber() {
		return applicationScreenNumber;
	}

	public void setApplicationScreenNumber(Integer applicationScreenNumber) {
		this.applicationScreenNumber = applicationScreenNumber;
	}

	public String getApplicationAlternativeApp() {
		return applicationAlternativeApp;
	}

	public void setApplicationAlternativeApp(String applicationAlternativeApp) {
		this.applicationAlternativeApp = applicationAlternativeApp;
	}

	public Integer getApplicationUserCount() {
		return applicationUserCount;
	}

	public void setApplicationUserCount(Integer applicationUserCount) {
		this.applicationUserCount = applicationUserCount;
	}

	public Integer getApplicationReportNumber() {
		return applicationReportNumber;
	}

	public void setApplicationReportNumber(Integer applicationReportNumber) {
		this.applicationReportNumber = applicationReportNumber;
	}

	public CriticalData getCriticalData() {
		return criticalData;
	}

	public void setCriticalData(CriticalData criticalData) {
		this.criticalData = criticalData;
	}

	public String getApplicationDirection() {
		return applicationDirection;
	}
	
	public void setApplicationDirection(String applicationDirection) {
		this.applicationDirection = applicationDirection;
	}

	public String getApplicationUnit() {
		return applicationUnit;
	}

	public void setApplicationUnit(String applicationUnit) {
		this.applicationUnit = applicationUnit;
	}

	public String getApplicationDevelopers() {
		return applicationDevelopers;
	}

	public void setApplicationDevelopers(String applicationDevelopers) {
		this.applicationDevelopers = applicationDevelopers;
	}

	public String getApplicationOfficer() {
		return applicationOfficer;
	}

	public void setApplicationOfficer(String applicationOfficer) {
		this.applicationOfficer = applicationOfficer;
	}

	public String getApplicationSupport() {
		return applicationSupport;
	}

	public void setApplicationSupport(String applicationSupport) {
		this.applicationSupport = applicationSupport;
	}
}
