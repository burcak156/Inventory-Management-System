package com.sprhib.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sprhib.model.Application;
import com.sprhib.model.Team;

@Controller
@RequestMapping(value="/application")
public class ApplicationController {
	
	@RequestMapping(value="/applicationlist", method=RequestMethod.GET)
	public ModelAndView addTeamPage() {
		ModelAndView modelAndView = new ModelAndView("applicationlist");
		modelAndView.addObject("application", new Team());
		return modelAndView;
	}
}
