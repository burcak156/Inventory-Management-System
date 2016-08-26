package com.sprhib.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sprhib.model.CriticalData;

@Repository
public class CriticalDataDAOImpl implements CriticalDataDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void addCriticalData(CriticalData criticalData) {
		getCurrentSession().save(criticalData);
		
	}

	@Override
	public void updateCriticalData(CriticalData criticalData) {
		CriticalData criticalDataToUpdate = getCriticalData(criticalData.getApplication().getApplicationId());
		criticalDataToUpdate.setRelatedModuls(criticalData.getRelatedModuls());
		criticalDataToUpdate.setAffectedApplications(criticalData.getAffectedApplications());
		criticalDataToUpdate.setProcess(criticalData.getProcess());
		criticalDataToUpdate.setCriticalHours(criticalData.getCriticalHours());
		criticalDataToUpdate.setCriticalDays(criticalData.getCriticalDays());
		criticalDataToUpdate.setInterruptTolerationTime(criticalData.getInterruptTolerationTime());
		criticalDataToUpdate.setApplication(criticalData.getApplication());
		getCurrentSession().update(criticalDataToUpdate);
	}
	
	@Override
	public void updateWithAppId(CriticalData criticalData, Integer AppId) {
		
		String hql = "UPDATE CriticalData set relatedModuls =:rMod , " + 
	            "affectedApplications =:affApp , " +
				"criticalDays =:cDay , " +
	            "criticalHours =:cHours , " +
	            "interruptTolerationTime =:iTime , " +
	            "process =:pro " +
				"WHERE applicationId =:AppId";
		Query query = (Query) getCurrentSession().createQuery(hql);
		query.setParameter("rMod", criticalData.getRelatedModuls());
		query.setParameter("AppId", AppId);
		query.setParameter("affApp", criticalData.getAffectedApplications());
		query.setParameter("cDay", criticalData.getCriticalDays());
		query.setParameter("cHours", criticalData.getCriticalHours());
		query.setParameter("pro", criticalData.getProcess());
		query.setParameter("iTime", criticalData.getInterruptTolerationTime());
		query.executeUpdate();
	}
	
	@Override
	public CriticalData getCriticalData(int id) {
		CriticalData criticalData = (CriticalData) getCurrentSession().get(CriticalData.class, id);
		return criticalData;
	}

	@Override
	public void deleteCriticalData(int id) {
		CriticalData criticalData = getCriticalData(id);
		if (criticalData != null)
			getCurrentSession().delete(criticalData);
		
	}

	@SuppressWarnings("unchecked")
	public List<CriticalData> getCriticalDatum() {
		return getCurrentSession().createQuery("from CriticalData").list();
		}
	
}
