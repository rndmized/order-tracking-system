package com.sales.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Product;
import com.sales.repositories.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	public List<Product> getProducts() {
		List<Product> pl = new ArrayList<Product>();
		pl.addAll((List<Product>) productRepository.findAll());
		return pl;
	}
	
	public void addProduct(Product product){
		productRepository.save(product);
	}
	
	public boolean isProductInStock(Long id, int qty){
		Product p = productRepository.findOne(id);
		if (p != null){
			if((p.getQtyInStock() - qty) < 0){
				return false;
			} else {
				return true;
			}
			
		}else{
			return false;
		}
	}

}
