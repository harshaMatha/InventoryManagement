package main.InventoryManagement.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import main.InventoryManagement.dao.users.UsersImpl;
import main.InventoryManagement.models.Vendor;

@Controller
public class HomeController {

	@Autowired
	UsersImpl usersImpl;
	
	@GetMapping("/")
	public String getHome()
	{
		return "admin/addVendor";
	}
	
	@PostMapping("/addVendor")
	public String addVendor(Vendor v)
	{
		usersImpl.createVendor(v);
		return "admin/addVendor";
	}
	
}
