package main.controllers;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import main.dao.products.ProductCategoryDAO;
import main.dao.products.ProductsDAO;
import main.models.productModels.entities.HSNEntityModel;
import main.models.productModels.entities.ProductsCategory;
import main.models.productModels.inputModels.CategoryRequest;
import main.models.productModels.inputModels.CategoryRequest2;
import main.models.productModels.inputModels.HSNInputModel;
import main.models.productModels.inputModels.ProductsProductIdInputModel;
import main.models.productModels.inputModels.ProductsProductIdandBatchNoInputModel;
import main.models.productModels.outputModels.ProductStockData;
import main.models.productModels.outputModels.ProductsReOrderList;

@Controller
public class ProductControllers {

	@Autowired
	ProductsDAO productsDAO;
	@Autowired
	ProductCategoryDAO productCategoryDAO;

	
//It returns the Product Categories
	@PostMapping("/getProductCategories")
	public @ResponseBody List<ProductsCategory> getProductCategories(Model model) {
		List<ProductsCategory> productCategory = productCategoryDAO.getProductCategories();
		return productCategory;
	}

	
//It return productsIds and productNames by taking the categoryId as an input
	@PostMapping("/getProducts")
    public @ResponseBody List<ProductStockData> getProducts(String categoryId, Model model) {
	 ObjectMapper objectMapper = new ObjectMapper();
	 CategoryRequest categoryRequest = null;
	try {
		categoryRequest = objectMapper.readValue(categoryId,CategoryRequest.class);
	} catch (Exception e) {
		e.printStackTrace();
	} 
	 System.out.println(categoryRequest.getCategoryId());

        int selectedCategoryId = categoryRequest.getCategoryId();
        List<ProductStockData> products = productsDAO.getProductsByCategory(selectedCategoryId);
        return products;
    }
	
	
//It return products Data by taking the categoryId as an input
	@PostMapping("/getProductStockData")
	public @ResponseBody List<ProductStockData> getProducts(
			@ModelAttribute("categoryInputModel") CategoryRequest categoryInputModel, Model model) {

		int selectedCategoryId = categoryInputModel.getCategoryId();

		List<ProductStockData> products = productsDAO.getProductsByCategory(selectedCategoryId);
		return products;
	}
	
	
//It return product BatchNos by taking the productId as an input
	@PostMapping("/getProductBatchNos")
	public @ResponseBody List<ProductStockData> getProductBatchesNos(
			@ModelAttribute("productsProductIdInputModel") ProductsProductIdInputModel productsProductIdInputModel,
			Model model) {

		int selectedProductId = productsProductIdInputModel.getProductId();
		List<ProductStockData> batchesNos = productsDAO.getProductsByProductId(selectedProductId);
		return batchesNos;
	}

//It return products Data by taking the BatchNo and ProductId as an input
	@PostMapping("/getProductQuantityOrPrice")
	public @ResponseBody ProductStockData getProductQuantityOrPrice(
			@ModelAttribute("productsProductIdandBatchNoInputModel") ProductsProductIdandBatchNoInputModel productsProductIdandBatchNoInputModel,
			Model model) {

		int selectedProductId = productsProductIdandBatchNoInputModel.getProductId();
		int selectedBatchNo = productsProductIdandBatchNoInputModel.getBatchNo();
		ProductStockData quantity = productsDAO.getQuantityandpriceByProductIdOrBatchNo(selectedProductId,
				selectedBatchNo);
		return quantity;
	}

//It returns List of Re-order Products 
	@PostMapping("/getReOrderProductsData")
	public @ResponseBody List<ProductsReOrderList> getReOrderLevelProducts(Model model) {
		List<ProductsReOrderList> list = productsDAO.getReOrderLevelProducts();
		return list;
	}
	
//It persist the category created by procurement team
	@PostMapping("/createCategory")
	@ResponseBody
	public String saveCategory(@ModelAttribute("categoryInputModel") CategoryRequest2 categoryInputModel) {
System.out.println(categoryInputModel.toString());
		ModelMapper modelMapper = new ModelMapper();
		ProductsCategory productsCategory = modelMapper.map(categoryInputModel, ProductsCategory.class);
		productsDAO.saveCategory(productsCategory);
		return "null";
	}
	
	
//It persist the HSN created by the procurement team
	@PostMapping("/createHSN")
	@ResponseBody
	public String saveHSN(@ModelAttribute("hsnInputModel") HSNInputModel hsnInputModel) {
		ModelMapper modelMapper = new ModelMapper();
		HSNEntityModel hsnEntityModel = modelMapper.map(hsnInputModel, HSNEntityModel.class);
		productsDAO.saveHSN(hsnEntityModel);
		return "null";
	}

}