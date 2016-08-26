package com.sprhib.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sprhib.dao.CriticalDataDAO;
import com.sprhib.model.CriticalData;

@Service
@Transactional
public class CriticalDataServiceImpl implements CriticalDataService {

	@Autowired
	private CriticalDataDAO criticalDataDAO;
	
	@Override
	public void addCriticalData(CriticalData criticalData) {
		criticalDataDAO.addCriticalData(criticalData);
		
	}

	@Override
	public void updateCriticalData(CriticalData criticalData) {
		criticalDataDAO.updateCriticalData(criticalData);
		
	}

	@Override
	public CriticalData getCriticalData(int id) {
		
		return criticalDataDAO.getCriticalData(id);
	}

	@Override
	public void deleteCriticalData(int id) {
		criticalDataDAO.deleteCriticalData(id);
		
	}

	@Override
	public List<CriticalData> getCriticalDatum() {
		return criticalDataDAO.getCriticalDatum();
	}

	@Override
	public void updateWithAppId(CriticalData criticalData, Integer AppId) {
		criticalDataDAO.updateWithAppId(criticalData, AppId);
		
	}
	
}