package com.sales.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sales.models.Order;
import com.sales.services.CustomerService;
import com.sales.services.OrderService;
import com.sales.services.ProductService;

@SessionAttributes(value = "message")
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
	public String getAddOrder(@ModelAttribute("order") Order order, Model model) {
		String message = "";
		model.addAttribute("message", message);
		return "addOrder";
	}

	@RequestMapping(value = "/addOrder", method = RequestMethod.POST)
	public String addOrder(Model model, @ModelAttribute("order") @Valid Order order, BindingResult result, @ModelAttribute("message") String message) {
		if (result.hasErrors()) {
			System.out.println("HAS ERRORS!");
			return "addOrder";
		} else {
			
			// Check user id
			String validUser = cs.validateCustomerId(order.getCust().getcId());
			// Check stock
			String validProduct = ps.isProductInStock(order.getProd().getpId(), order.getQty());
			
			message = "";
			
			if(!validUser.isEmpty()){
				message = String.join(" ", message, validUser);
			}
			if(!validProduct.isEmpty()){
				message = String.join(" ", message, validProduct);
			}
			if (message.isEmpty()){
				os.addOrder(order);
				return "redirect:showOrders";
			}
			model.addAttribute("message", message);
			return "orderError";
		}
	}

	@RequestMapping(value = "/orderError", method = RequestMethod.GET)
	public String getAddOrderError(@ModelAttribute("order") Order order, @ModelAttribute("message") String message) {
		return "orderError";
	}
}
