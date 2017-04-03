package com.sales.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Order;
import com.sales.repositories.OrderRepository;

@Service
public class OrderService {

	@Autowired
	private OrderRepository orderRepository;

	public List<Order> getOrders() {
		List<Order> ol = new ArrayList<Order>();
		ol.addAll((List<Order>) orderRepository.findAll());
		return ol;
	}

}
