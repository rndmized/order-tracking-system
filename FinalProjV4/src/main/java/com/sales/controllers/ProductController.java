package com.sales.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sales.models.Product;
import com.sales.services.ProductService;


@org.springframework.stereotype.Controller
public class ProductController {
	
	@Autowired
	private ProductService ps;

	@RequestMapping(value = "/showProducts", method = RequestMethod.GET)
	public String getProducts(Model model) {
		List<Product> allProducts = ps.getProducts();
		model.addAttribute("productList", allProducts);
		return "products";
	}
	
	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String addProduct() {
		return "addProduct";
	}
	
}
	