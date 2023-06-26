package main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import main.dao.inventoryIndents.InventoryIndentsDAO;


//It handles the controls of inventory home page(redirecting the inventory user pages)

@Controller
public class InventoryControllers {

	@Autowired
	public InventoryIndentsDAO inventoryIndentsDAO;
	
//It redirect the Inventory Home page 
	@GetMapping(value = "/inventoryHome")
	public String user() {
		return "inventory/inventoryHome";
	}
	
// It redirected to the InventoryHome page to Create Indent Page.

	@PostMapping(value = "/createIndentButton")
	public String CallCreateIndent() {
		return "inventory/createIndent";
	}
	
	
// It redirected to the InventoryHome page to the Create Adjustments Page.
	@PostMapping(value = "/adjustmentsButton")
	public String CallAdjustments() {
		return "inventory/adjustments";
	}

	
// It redirected to the InventoryHome page to the Create Price Review Page.
	@PostMapping(value = "/priceReviewButton")
	public String CallPriceReview() {
		return "inventory/priceReview";
	}
	

// It redirected to the InventoryHome page to the Create stock Issues Page.
	@PostMapping(value = "/createStockIssueButton")
	public String CreateStoreIssue() {
		return "inventory/createStockIssues";
	}
	
	
// It redirected to the InventoryHome page to the Stock Issues List Page.
	@PostMapping(value = "/stockIssuesButton")
	public String StockIssues() {
		return "inventory/stockIssues";
	}
	

// It redirected to the InventoryHome page to the Stock Issues Products Page.
	@PostMapping(value = "/stockIssuedProductsButton")
	public String IssuedProductsIndents() {
		return "inventory/stockIssuedProducts";
	}

	
// It redirected to the InventoryHome page to the Store Returns Page.
	@PostMapping(value = "/storeReturnsButton")
	public String StockReturns() {
		return "inventory/storeReturns";
	}

	
// It redirected to the InventoryHome page to the Store Returns Products Page.
	@PostMapping(value = "/storeReturnedProductsButton")
	public String StockReturnedProducts() {
		return "inventory/storeReturnedProducts";
	}
	

// It redirected to the InventoryHome page to the Indents Products Page.
	@PostMapping(value = "/indentProductsButton")
	public String IndentProducts() {
		return "inventory/indentProducts";
	}

	
// It redirected to the InventoryHome page to the Indents List Page.
	@PostMapping("/indentsButton")
	public String getIndentsPage(Model m) {
		m.addAttribute("indents", inventoryIndentsDAO.getAllIndents());
		return "inventory/indents";
	}


// It redirected to the InventoryHome page to the Login Page.
	@PostMapping(value = "/logoutButton")
	public String CallLogout() {
		return "Login/login";

	}

}