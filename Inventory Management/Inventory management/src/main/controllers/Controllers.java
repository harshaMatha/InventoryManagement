package main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.dal.InfoGetter;
import main.models.LoginData;

@Controller
public class Controllers {

	InfoGetter ifg;

	@Autowired
	public Controllers(InfoGetter infoGetter) {
		ifg = infoGetter;
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String getLogin() {
		return "login";
	}

	@RequestMapping(value = "validate", method = RequestMethod.GET)
	public String validate(@Validated LoginData ld, Model m) {
		m.addAttribute("data", ifg.getEmployeeData());
		return "validated";
	}
}
