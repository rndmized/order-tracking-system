package com.sales.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sales.models.Order;
import com.sales.services.OrderService;

@org.springframework.stereotype.Controller
public class OrderController {

	@Autowired
	private OrderService os;

	
	@RequestMapping(value = "/showOrders", method = RequestMethod.GET)
	public String showOrders(Model model) {
		List<Order> allOrders = os.getOrders();
		model.addAttribute("orderList", allOrders);
		return "orders";
	}
}
