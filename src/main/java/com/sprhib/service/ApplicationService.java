package com.sprhib.service;

import java.util.List;

import com.sprhib.model.Application;

public interface ApplicationService {

	public void addApplication(Application application);
	public void updateApplication(Application application);
	public Application getApplication(int id);
	public void deleteApplication(int id);
	public List<Application> getApplications();
	
}
