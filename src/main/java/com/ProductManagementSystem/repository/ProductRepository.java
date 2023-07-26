package com.ProductManagementSystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ProductManagementSystem.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	
	public List<Product> findByName(String name);

}
