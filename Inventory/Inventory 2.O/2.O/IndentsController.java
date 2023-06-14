package com.shankar.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.shankar.daos.indentsDaoImplementation;
import com.shankar.models.Indents;



@Controller
public class IndentsController {

	@Autowired
	public indentsDaoImplementation p;


	@GetMapping("/create")
	public String showCreateForm(Model model) {
		// model.addAttribute("vendor", new Vendor());
		return "inventory/createIndent";
	}

	@GetMapping("/saveIndent")
	public String saveVendor(Indents indent, Model model) {
		p.createIndent(indent);
		return "admin/addVendor";
	}

	@GetMapping("/indentsButton")
	public String createVendor(Model m) {
		m.addAttribute("indents", p.getAllIndents());
		System.out.println("vendor created");
		return "indents";
	}

}
