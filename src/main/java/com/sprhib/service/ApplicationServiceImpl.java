package com.sprhib.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sprhib.dao.ApplicationDAO;
import com.sprhib.exception.ApplicationNotFoundException;
import com.sprhib.model.Application;

@Service
@Transactional
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	private ApplicationDAO applicationDAO;
	
	@Override
	public void addApplication(Application application) {
		applicationDAO.addApplication(application);
	}

	@Override
	public void updateApplication(Application application) throws ApplicationNotFoundException {
		applicationDAO.updateApplication(application);
		
	}

	@Override
	public Application getApplication(int id) throws ApplicationNotFoundException {
		return applicationDAO.getApplication(id);
	}

	@Override
	public void deleteApplication(int id) throws ApplicationNotFoundException {
		applicationDAO.deleteApplication(id);
	}

	@Override
	public List<Application> getApplications() {
		return applicationDAO.getApplications();
	}

	@Override
	public List<Application> findBy(String columnName, String search) {
		return applicationDAO.findBy(columnName, search);	
	}

	@Override
	public List<Application> getDevelopers() {
		return applicationDAO.getDevelopers();
	}
}