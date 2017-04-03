package com.sales.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sales.models.Customer;
import com.sales.services.CustomerService;

@org.springframework.stereotype.Controller
public class CustomerController {
	
	@Autowired
	private CustomerService cs;

	
	@RequestMapping(value = "/showCustomers", method = RequestMethod.GET)
	public String showCustomers(Model model) {
		List<Customer> allCustomers = cs.getCustomers();
		model.addAttribute("customerList", allCustomers);
		return "customers";
	}
	
}
