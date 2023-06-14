package com.shankar.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InventoryControllers {

	@RequestMapping(value = "/home")
	public String user() {
		return "inventory/inventoryHome";
	}

	@RequestMapping(value = "/createIndentButton")
	public String CallCreateIndent() {
		return "inventory/createIndent";
	}

	@RequestMapping(value = "/adjustmentsButton")
	public String CallAdjustments() {
		return "inventory/adjustments";
	}
	@RequestMapping(value = "/priceReviewButton")
	public String CallPriceReview() {
		return "inventory/priceReview" ;
	}
	@RequestMapping(value = "/createStockIssueButton")
	public String CreateStoreIssue() {
		return "inventory/createStockIssues";
	}
	@RequestMapping(value = "/stockIssuesButton")
	public String StockIssues() {
		return "inventory/stockIssues";
	}
	@RequestMapping(value = "/stockIssuedProductsButton")
	public String IssuedProductsIndents() {
		return "inventory/stockIssuedProducts";
	}
	@RequestMapping(value = "/storeReturnsButton")
	public String StockReturns() {
		return "inventory/storeReturns";
	}
	
	@RequestMapping(value = "/storeReturnedProductsButton")
	public String StockReturnedProducts() {
		return "inventory/storeReturnedProducts";
}
	
	@RequestMapping(value = "/indentProductsButton")
	public String IndentProducts() {
		return "inventory/indentProducts";
}
	@RequestMapping(value = "/indentsButton")
	public String CallIndents() {
		return "inventory/indents";
}
	
	
	
}
