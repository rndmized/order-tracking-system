package com.sales.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String getAddProduct(@ModelAttribute("product") Product product) {
		return "addProduct";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") @Valid Product product, BindingResult result) {
		if (result.hasErrors()) {
			return "addProduct";
		} else {
			ps.addProduct(product);
			return "redirect:showProducts";
		}

	}

}
