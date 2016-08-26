package com.sprhib.service;

import java.util.List;

import com.sprhib.model.CriticalData;

public interface CriticalDataService {
	public void addCriticalData(CriticalData criticalData);
	public void updateCriticalData(CriticalData criticalData);
	public CriticalData getCriticalData(int id);
	public void deleteCriticalData(int id);
	public List<CriticalData> getCriticalDatum();
	public void updateWithAppId(CriticalData criticalData, Integer AppId);
}
