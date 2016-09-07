package com.sprhib.service;

import java.util.List;

import com.sprhib.exception.ApplicationNotFoundException;
import com.sprhib.model.Application;

public interface ApplicationService {

	public void addApplication(Application application);
	public void updateApplication(Application application) throws ApplicationNotFoundException;
	public Application getApplication(int id) throws ApplicationNotFoundException;
	public void deleteApplication(int id) throws ApplicationNotFoundException;
	public List<Application> getApplications();
	public List<Application> findBy(String columnName, String search);
	public List<Application> getDevelopers();
}
