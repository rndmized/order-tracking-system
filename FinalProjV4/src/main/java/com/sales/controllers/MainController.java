package com.sales.controllers;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


public class MainController {
	


	@RequestMapping(value = "/*", method = RequestMethod.GET)
	public String getMainMenu(Model model) {
		return "main";
	}
	

}
