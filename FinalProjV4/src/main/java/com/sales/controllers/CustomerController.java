package com.sales.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sales.models.Customer;
import com.sales.models.Product;
import com.sales.services.CustomerService;
import com.sales.services.OrderService;

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
	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public String getAddCustomer(@ModelAttribute("customer") Customer customer) {
		return "addCustomer";
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute("customer") @Valid Customer customer, BindingResult result) {
		if (result.hasErrors()) {
			return "addCustomer";
		} else {
			cs.addCustomer(customer);
			return "redirect:showCustomers";
		}

	}
}
