package com.sprhib.dao;

import java.util.List;

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
		CriticalData criticalDataToUpdate = getCriticalData(criticalData.getApplicationId());
		criticalDataToUpdate.setRelatedModuls(criticalData.getRelatedModuls());
		getCurrentSession().update(criticalDataToUpdate);
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
