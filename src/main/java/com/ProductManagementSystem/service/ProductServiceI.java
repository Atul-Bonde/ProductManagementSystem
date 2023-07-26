package com.ProductManagementSystem.service;

import java.util.List;

import com.ProductManagementSystem.model.Product;

public interface ProductServiceI {
	
	
	public boolean saveproduct(Product p);
	
	public List<Product> listproduct();
	
	public List<Product> find(String name);
	
	public boolean deleteproduct(int id);

}
