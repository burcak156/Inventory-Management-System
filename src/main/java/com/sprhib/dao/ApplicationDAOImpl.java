package com.sprhib.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sprhib.model.Application;
import com.sprhib.model.CriticalData;

@Repository
public class ApplicationDAOImpl implements ApplicationDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addApplication(Application application) {
		getCurrentSession().save(application);
	}
	
	@Override
	public void updateApplication(Application application) {
		Application appToUpdate = getApplication(application.getApplicationId());
		appToUpdate.setApplicationName(application.getApplicationName());
		appToUpdate.setApplicationCode(application.getApplicationCode());
		appToUpdate.setApplicationAlternativeApp(application.getApplicationAlternativeApp());
		appToUpdate.setApplicationAuthorization(application.getApplicationAuthorization());
		appToUpdate.setApplicationBrowser(application.getApplicationBrowser());
		appToUpdate.setApplicationCommonUserCode(application.getApplicationCommonUserCode());
		appToUpdate.setApplicationDatabase(application.getApplicationDatabase());
		appToUpdate.setApplicationHardwarePlatform(application.getApplicationHardwarePlatform());
		appToUpdate.setApplicationNutShell(application.getApplicationNutShell());
		appToUpdate.setApplicationOS(application.getApplicationOS());
		appToUpdate.setApplicationProgrammingLang(application.getApplicationProgrammingLang());
		appToUpdate.setApplicationScreenNumber(application.getApplicationScreenNumber());
		appToUpdate.setApplicationServer(application.getApplicationServer());
		appToUpdate.setApplicationUserCount(application.getApplicationUserCount());
		getCurrentSession().update(appToUpdate);
	}
	
	@Override
	public Application getApplication(int id) {
		Application application = (Application) getCurrentSession().get(Application.class, id);
		return application;
	}
	
	@Override
	public void deleteApplication(int id) {
		Application application = getApplication(id);
		if(application != null)
			getCurrentSession().delete(application);
	}
	
	@SuppressWarnings("unchecked")
	public List<Application> getApplications() {
		return getCurrentSession().createQuery("from Application").list();
	}
	
}
