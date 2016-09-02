package com.sprhib.dao;

import java.util.List;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sprhib.model.Application;
import com.sprhib.exception.ApplicationNotFoundException;

@Repository
public class ApplicationDAOImpl implements ApplicationDAO {
	private static final Logger logger = Logger.getLogger(ApplicationDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addApplication(Application application) {
		getCurrentSession().save(application);
		logger.info("Application successfully added.");
	}
	
	@Override
	public void updateApplication(Application application) throws ApplicationNotFoundException {
		Application appToUpdate;
		try {
			appToUpdate = getApplication(application.getApplicationId());
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
			appToUpdate.setApplicationOfficer(application.getApplicationOfficer());
			appToUpdate.setApplicationSupport(application.getApplicationSupport());
			appToUpdate.setApplicationDevelopers(application.getApplicationDevelopers());
			appToUpdate.setApplicationDirection(application.getApplicationDirection());
			appToUpdate.setApplicationUnit(application.getApplicationUnit());
			//appToUpdate.setCriticalData(application.getCriticalData());
			getCurrentSession().update(appToUpdate);
			logger.info("Application : " + application.getApplicationCode() + "successfuly updated");
		} catch (ApplicationNotFoundException e) {
			logger.error("Application not found with id" + application.getApplicationId());
			throw new ApplicationNotFoundException("Application not found with id" + application.getApplicationId());	
		}
		
	}
	
	@Override
	public Application getApplication(int id) throws ApplicationNotFoundException {
		Application application = (Application) getCurrentSession().get(Application.class, id);
		if(application != null)
			logger.info("Application has been reached successfully.");
			
		return application;
	}
	
	@Autowired(required = false)
	@Override
	public void deleteApplication(int id) throws ApplicationNotFoundException {
		Application application = getApplication(id);
		if(application != null)
			getCurrentSession().delete(application);
		else{
			logger.error("DELETE : Application not found with id" + id);
		throw new ApplicationNotFoundException("Application not found with id " + id);
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<Application> getApplications() {
		return getCurrentSession().createQuery("from Application").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Application> findBy(String columnName, String search) {
		String hql = null;
		if(columnName.equals("applicationDevelopers"))
			hql = "from Application where applicationDevelopers like :search";
		else if(columnName.equals("applicationSupport"))
			hql = "from Application where applicationSupport like :search";
		else if(columnName.equals("applicationCommonUserCode"))
			hql = "from Application where applicationCommonUserCode like :search";
		
		return getCurrentSession().createQuery(hql)
		.setParameter("search",'%' + search + '%')
		.list();
	
	}
	
}
