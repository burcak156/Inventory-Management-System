package com.sprhib.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sprhib.model.Application;
import com.sprhib.model.Team;
import com.sprhib.service.ApplicationService;

@Controller
@RequestMapping(value="/application")
public class ApplicationController {
	
	@Autowired
	private ApplicationService applicationService;
	
//	@RequestMapping(value="/applicationlist", method=RequestMethod.GET)
//	public ModelAndView addTeamPage() {
//		ModelAndView modelAndView = new ModelAndView("applicationlist");
//		modelAndView.addObject("application", new Application());
//		return modelAndView;
//	}
	
	@RequestMapping(value="/applicationlist", method=RequestMethod.GET)
	public ModelAndView listOfApplications() {
		ModelAndView modelAndView = new ModelAndView("applicationlist");
		
		List<Application> applications = applicationService.getApplications();
		modelAndView.addObject("applications", applications);
		
		return modelAndView;
	}
	

	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteApplication(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		applicationService.deleteApplication(id);
		String message = "Application was succefuly deleted.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}
}
