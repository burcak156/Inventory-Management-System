package com.sprhib.dao;

import java.util.List;

import com.sprhib.model.CriticalData;

public interface CriticalDataDAO {
	
	public void addCriticalData(CriticalData criticalData);
	public void updateCriticalData(CriticalData criticalData);
	public CriticalData getCriticalData(int id);
	public void deleteCriticalData(int id);
	public List<CriticalData> getCriticalDatum();
	public void updateWithAppId(CriticalData criticalData, Integer AppId);
}