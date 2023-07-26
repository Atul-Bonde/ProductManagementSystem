package com.ProductManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ProductManagementSystem.model.Product;
import com.ProductManagementSystem.repository.ProductRepository;

@Service
public class ProductService implements ProductServiceI {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public boolean saveproduct(Product p) {

		Product save = productRepository.save(p);

		if (save != null) {

			return true;
		} else {

			return false;
		}

	}

	@Override
	public List<Product> listproduct() {

		List<Product> findAll = productRepository.findAll();

		return findAll;
	}

	@Override
	public List<Product> find(String name) {

		List<Product> findByName = productRepository.findByName(name);

		return findByName;
	}

	@Override
	public boolean deleteproduct(int id) {

		boolean existsById = productRepository.existsById(id);

		if (existsById) {

			productRepository.deleteById(id);
			return true;
		} else {

			return false;
		}
	}

}
