package com.shankar.controllers;
import java.util.*;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shankar.entityModels.*;

import org.springframework.ui.Model;
@Controller
public class ProductController {

	@RequestMapping(value = "/getProductsCategories")
	public String getProductsCategories(Model m) {

			ProductsCategory obj= new ProductsCategory(23,"cosmetics");
			ProductsCategory obj1= new ProductsCategory(24,"oils");
			ProductsCategory obj2= new ProductsCategory(25,"clothes");
			ProductsCategory obj3= new ProductsCategory(26,"electronics");
			ProductsCategory obj4= new ProductsCategory(27,"footwear");

		List<ProductsCategory> ob=new ArrayList<>();
		ob.add(obj4);
		ob.add(obj3);
		ob.add(obj2);
		ob.add(obj1);
		ob.add(obj);
		m.addAttribute("categories", ob);
		return "inventory/adjustments";
	}
	@RequestMapping(value = "/getProductsNames")
	@ResponseBody
	public ResponseEntity<List<ProductsNames>> getProductsNames(Model m) {

			ProductsNames abj= new ProductsNames(1,"sweatwear_Lenin");
			ProductsNames abj1= new ProductsNames(2,"sunflower_Oil_1kg");
			ProductsNames abj2= new ProductsNames(3,"Fog_perfume_150ml");
			ProductsNames abj3= new ProductsNames(4,"iqoo_z7_5g");
			ProductsNames abj4= new ProductsNames(5,"sparx_sneakers");

		List<ProductsNames> ob1=new ArrayList<>();
		ob1.add(abj);
		ob1.add(abj1);
		ob1.add(abj2);
		ob1.add(abj3);
		ob1.add(abj4);

		return ResponseEntity.ok(ob1);
	}

	@RequestMapping(value = "/getBatchNo")
	@ResponseBody
	public ResponseEntity<List<ProductsBatchNos>> getBatchNo() {

		    ProductsBatchNos abj= new ProductsBatchNos(121);
		    ProductsBatchNos abj1= new ProductsBatchNos(221);
		    ProductsBatchNos abj2= new ProductsBatchNos(321);
		    ProductsBatchNos abj3= new ProductsBatchNos(421);
		    ProductsBatchNos abj4= new ProductsBatchNos(521);

		List<ProductsBatchNos> ob1=new ArrayList<>();
		ob1.add(abj);
		ob1.add(abj1);
		ob1.add(abj2);
		ob1.add(abj3);
		ob1.add(abj4);

		return ResponseEntity.ok(ob1);
	}
	
	
	
	
}