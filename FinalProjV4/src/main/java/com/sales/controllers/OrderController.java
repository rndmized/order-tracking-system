package com.sales.controllers;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sales.models.Order;
import com.sales.services.CustomerService;
import com.sales.services.OrderService;
import com.sales.services.ProductService;

@org.springframework.stereotype.Controller
public class OrderController {

	@Autowired
	private OrderService os;
	@Autowired
	private CustomerService cs;
	@Autowired
	private ProductService ps;

	@RequestMapping(value = "/showOrders", method = RequestMethod.GET)
	public String showOrders(Model model, @ModelAttribute("msg") String message) {
		List<Order> allOrders = os.getOrders();
		model.addAttribute("orderList", allOrders);
		return "orders";
	}

	@RequestMapping(value = "/addOrder", method = RequestMethod.GET)
	public String getAddOrder(@ModelAttribute("order") Order order) {
		return "addOrder";
	}

	@RequestMapping(value = "/addOrder", method = RequestMethod.POST)
	public String addOrder(@ModelAttribute("order") @Valid Order order, @ModelAttribute("msg") String message, BindingResult result) {
		if (result.hasErrors()) {
			return "addProduct";
		} else {
			// Set Date to current (Format date)
			order.setOrderDate(new Date().toString());
			// Check user id
			boolean validCustomer = cs.validateCustomerId(order.getCust().getcId());
			// Check stock
			boolean validOrder = ps.isProductInStock(order.getProd().getpId(), order.getQty());
			if (validCustomer && validOrder) {
				os.addOrder(order);
				return "redirect:showOrders";
			} else if (validCustomer && !validOrder) {
				message ="Invalid Stock";
				System.out.println(message);
			} else if (!validCustomer && validOrder) {
				message = "Invalid Customer";
				System.out.println(message);
			} else {
				message = "Invalid Customer & invalid Stock";
				System.out.println(message);
			}
			return "addOrder";
		}

	}
}
