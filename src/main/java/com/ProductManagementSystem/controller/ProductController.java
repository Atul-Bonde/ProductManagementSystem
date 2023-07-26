package com.ProductManagementSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ProductManagementSystem.model.Product;
import com.ProductManagementSystem.service.ProductServiceI;

@Controller
public class ProductController {

	@Autowired
	private ProductServiceI productServiceI;

	@GetMapping("/home")
	public String home() {

		return "home";
	}

	@GetMapping("/save")
	public String presave() {

		return "save";
	}

	@GetMapping("/saveproduct")
	public String saveproduct(Product p, Model m) {

		boolean saveproduct = productServiceI.saveproduct(p);

		if (saveproduct) {

			String msg = "Product Save Successfully.";
			m.addAttribute("SAVE", msg);
			return "home";

		} else {

			String msg = "Product Not Saved ..Try Again";
			m.addAttribute("NOTSAVE", msg);
			return "home";
		}

	}

	@GetMapping("/list")
	public String listproduct(Model m) {

		List<Product> listproduct = productServiceI.listproduct();

		m.addAttribute("listproduct", listproduct);

		return "list";

	}

	@GetMapping("/find")
	public String findprouct() {

		return "prefind";
	}

	@GetMapping("/findbyname")
	public String find(String name, Model m) {

		List<Product> find = productServiceI.find(name);

		if (find.isEmpty()) {

			String masg = "No Such Prodcut Found";
			m.addAttribute("NOTFOUND", masg);
			return "home";

		} else {

			m.addAttribute("find", find);
			return "find";

		}

	}

	@GetMapping("/update")
	public String update() {

		return "update";

	}

	@GetMapping("/updateproduct")
	public String updateproduct(Model m, Product p) {

		boolean saveproduct = productServiceI.saveproduct(p);

		if (saveproduct) {

			String msg = "Product Updated Successfully";
			m.addAttribute("UPDATE", msg);
			return "home";
		} else {

			String msg = "Product Updated Not Successfully";
			m.addAttribute("NOTUPDATE", msg);
			return "home";
		}

	}

	@GetMapping("/delete")
	public String delete() {

		return "delete";
	}

	@GetMapping("/deleteproduct")
	public String deletebyid(int id, Model m) {

		boolean deleteproduct = productServiceI.deleteproduct(id);

		if (deleteproduct) {

			String msg = "Product Delete Succesfully";
			m.addAttribute("DELETE", msg);
			return "home";

		}

		else {

			String msg = "Product Not Deleted";
			m.addAttribute("NOTDELETE", msg);
			return "home";
		}
	}

}
