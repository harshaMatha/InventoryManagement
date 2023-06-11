package controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InventoryController {

	@RequestMapping(value = "/home")
	public String user() {
		return "Inventory_home";
	}

	@RequestMapping(value = "/indentsButton")
	public String CallIndent() {
		return "Indents";
	}

	@RequestMapping(value = "/adjustmentsButton")
	public String CallAdjustments() {
		return "Adjustments";
	}
	@RequestMapping(value = "/priceReviewButton")
	public String CallPriceReview() {
		return "PriceReview";
	}
	@RequestMapping(value = "/createStoreIndentButton")
	public String CreateStoreIndent() {
		return "createStoreIndent";
	}
	@RequestMapping(value = "/storeIssuedIndentsButton")
	public String StoreIssuedIndents() {
		return "StoreIssuedIndents";
	}
	@RequestMapping(value = "/issuedProductsButton")
	public String IssuedProductsIndents() {
		return "IssuedProducts";
	}
	@RequestMapping(value = "/storeReturnsButton")
	public String StoreReturns() {
		return "StoreReturns";
	}
	
	@RequestMapping(value = "/storeReturnsProductsButton")
	public String StoreReturnsProducts() {
		return "StoreReturnProducts";
	}
}
