package com.sprhib.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sprhib.exception.ApplicationNotFoundException;
import com.sprhib.model.AppCritical;
import com.sprhib.model.Application;
import com.sprhib.model.CriticalData;
import com.sprhib.service.ApplicationService;
import com.sprhib.service.CriticalDataService;

@Controller
@RequestMapping(value = "/application")
public class ApplicationController {

	@Autowired
	private ApplicationService applicationService;

	@Autowired
	private CriticalDataService criticalDataService;

	@RequestMapping(value = "/applicationlist", method = RequestMethod.GET)
	public ModelAndView listOfApplications(@RequestParam(value = "search", required = false) String param1,
			@RequestParam(value = "dropdown", required = false) String param2 ,
			@RequestParam(value = "radio", required = false) String param3,
			@RequestParam(value = "devDrop", required = false) String param4, HttpServletRequest request) throws UnsupportedEncodingException {

		ModelAndView modelAndView = new ModelAndView("applicationlist");
		
		List<Application> developers = applicationService.getDevelopers();
		modelAndView.addObject("devList", developers);
		
		//-------------------------
		request.setCharacterEncoding("UTF-8");
		request.getParameter("search");
	
		if (param1 != null && param2 != null && param1 != "" && param2 != "") {
			
			modelAndView.addObject("message", param1);
			List<Application> applications = applicationService.findBy(param2, param1);
			modelAndView.addObject("applications", applications);
		} 
		else if (param3 != null && param4 != null && param3 != "" && param4 != "") {
			List<Application> applications = applicationService.findBy(param3, param4);
			modelAndView.addObject("applications", applications);
		}
	
		else {
			List<Application> applications = applicationService.getApplications();
			modelAndView.addObject("applications", applications);
		}

		return modelAndView;
	}

	@RequestMapping(value = "/addapplication", method = RequestMethod.GET)
	public ModelAndView addApplicationPage() {
		ModelAndView modelAndView = new ModelAndView("addapplication");
		modelAndView.addObject("appcritic", new AppCritical());
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addingApplication(@ModelAttribute("Application") Application application,
			BindingResult resultApp, @ModelAttribute("CriticalData") CriticalData criticalData,
			BindingResult resultCriticalData) {
		ModelAndView modelAndView = new ModelAndView("home");

		criticalData.setAffectedApplications(application.getCriticalData().getAffectedApplications());
		criticalData.setCriticalDays(application.getCriticalData().getCriticalDays());
		criticalData.setCriticalHours(application.getCriticalData().getCriticalHours());
		criticalData.setInterruptTolerationTime(application.getCriticalData().getInterruptTolerationTime());
		criticalData.setProcess(application.getCriticalData().getProcess());
		criticalData.setRelatedModuls(application.getCriticalData().getRelatedModuls());

		criticalDataService.addCriticalData(criticalData);

		String message = "Application was successfully added.";
		modelAndView.addObject("message", message);
		modelAndView.addObject("application", application.getCriticalData().getInterruptTolerationTime());
		return modelAndView;
	}

	@RequestMapping(value = "/delete/{applicationId}", method = RequestMethod.GET)
	public ModelAndView deleteApplication(@PathVariable Integer applicationId) throws ApplicationNotFoundException {
		ModelAndView modelAndView = new ModelAndView("home");
		applicationService.deleteApplication(applicationId);
		String message = "Application was succefuly deleted.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

	@RequestMapping(value = "/edit/{applicationId}", method = RequestMethod.GET)
	public ModelAndView editApplicationPage(@PathVariable Integer applicationId) throws ApplicationNotFoundException {
		ModelAndView modelAndView = new ModelAndView("edit-application");
		Application application = applicationService.getApplication(applicationId);
		modelAndView.addObject("application", application);
		return modelAndView;
	}

	@RequestMapping(value = "/edit/{applicationId}", method = RequestMethod.POST)
	public ModelAndView editingApplication(@ModelAttribute("Application") Application application,
			BindingResult resultApp, @ModelAttribute("CriticalData") CriticalData criticalData,
			BindingResult resultCriticalData) throws ApplicationNotFoundException {
		ModelAndView modelAndView = new ModelAndView("home");

		criticalData.setAffectedApplications(application.getCriticalData().getAffectedApplications());
		criticalData.setCriticalDays(application.getCriticalData().getCriticalDays());
		criticalData.setCriticalHours(application.getCriticalData().getCriticalHours());
		criticalData.setInterruptTolerationTime(application.getCriticalData().getInterruptTolerationTime());
		criticalData.setProcess(application.getCriticalData().getProcess());
		criticalData.setRelatedModuls(application.getCriticalData().getRelatedModuls());
		applicationService.updateApplication(application);
		criticalDataService.updateWithAppId(criticalData, application.getApplicationId());

		String message = "Application Successfully updated.";
		modelAndView.addObject("message", message);
		modelAndView.addObject("application", application);
		return modelAndView;
	}
}