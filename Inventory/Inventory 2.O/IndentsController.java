package main.controllers;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import main.dao.inventoryIndents.InventoryIndentsDAO;
import main.models.indentModels.entities.InventoryIndentsList;
import main.models.indentModels.inputModels.FilterInput;
import main.models.indentModels.inputModels.InventoryIndentsInputList;
import main.models.indentModels.outputModels.FilteredIndent;
import main.models.indentModels.outputModels.InventoryIndentProductListData;
import main.models.storeModels.inputmodels.IndentId;

@Controller
public class IndentsController {

	@Autowired
	InventoryIndentsDAO inventoryIndentsDAO;

//It persist the indents created by the inventory team to the procurement team
	@PostMapping("/createInventoryIndent")
	public String createInventoryIndent(String jsonData, Model m) {
		ObjectMapper objectMapper = new ObjectMapper();
		ModelMapper modelMapper = new ModelMapper();
		InventoryIndentsInputList inventoryIndentsInputList = null;

		try {
			// place JSON data into Inventory Indents Input List.
			inventoryIndentsInputList = objectMapper.readValue(jsonData, InventoryIndentsInputList.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// place Input List data into Inventory Indents Entity Model.
		InventoryIndentsList inventoryIndentsList = modelMapper.map(inventoryIndentsInputList,
				InventoryIndentsList.class);

		m.addAttribute("data", inventoryIndentsList);

		inventoryIndentsDAO.saveInventoryIndent(inventoryIndentsList);

		return "inventory/createIndent";
	}

	
//It returns the InventoryIndentProductList page by taking IndentId as input
	@PostMapping("/getInventoryIndentProductsList")
	public String  getInventoryIndentProductsList(String indentId, Model m) {
		ObjectMapper objectMapper = new ObjectMapper();
		IndentId indentid = null;
		try {
			
		// Place Input List data into Indents Entity Model.
			indentid = objectMapper.readValue(indentId, IndentId.class);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		List<InventoryIndentProductListData> inventoryIndentProductListData = inventoryIndentsDAO
				.getInventoryIndentProductsList(indentid);

		m.addAttribute("productsList", inventoryIndentProductListData);


		return "inventory/indentProducts";
	}
	
	
// It returns the InventoryIndentProductListData by taking IndentId as input
	@GetMapping("/getInventoryIndentProductsListData")
	@ResponseBody
	public List<InventoryIndentProductListData>  getInventoryIndentProductsListData(String indentId, Model m) {
		ObjectMapper objectMapper = new ObjectMapper();
		IndentId indentid = null;
		try {
			
		// place IndentsID into Inventory IndentsID Input Model .
			indentid = objectMapper.readValue(indentId, IndentId.class);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		List<InventoryIndentProductListData> inventoryIndentProductListData = inventoryIndentsDAO
				.getInventoryIndentProductsList(indentid);

		return inventoryIndentProductListData;
	}
	
//It filters the data according to the FromDate,ToDate and IndentStatus
	@PostMapping("/filterIndents")
	@ResponseBody
	public List<FilteredIndent> filterIndents(String filters) {
		FilterInput filterInput = null;
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.registerModule(new JavaTimeModule());
		try {
			
		// place Filters JSON data into FilterInput Model .
			filterInput = objectMapper.readValue(filters, FilterInput.class);

		} catch (Exception e) {
			e.printStackTrace();
		}

		List<FilteredIndent> sl = inventoryIndentsDAO.getfilterIndents(filterInput);

		return sl;
	}

}