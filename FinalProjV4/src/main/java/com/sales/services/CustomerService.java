package com.sales.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Customer;
import com.sales.repositories.CustomerRepository;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	public List<Customer> getCustomers() {
		List<Customer> cl = new ArrayList<Customer>();
		cl.addAll((List<Customer>) customerRepository.findAll());
		return cl;
	}

	public void addCustomer(Customer customer){
		customerRepository.save(customer);
	}
	
	public boolean validateCustomerId(Long id){
		Customer c = customerRepository.findOne(id);
		if(c == null){
			return false;
		}else{
			return true;
		}
	}
}
