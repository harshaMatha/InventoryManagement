package com.shankar.entityModels;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "im_products")
public class ProductsNames {
	@Id
	@Column(name = "Product_ID")
	private int productID;
	@Column(name = "Product_Name")
	private String productName;
	@Override
	public String toString() {
		return "ProductsNames [productID=" + productID + ", productName=" + productName + "]";
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public ProductsNames(int productID, String productName) {
		super();
		this.productID = productID;
		this.productName = productName;
	}

	

}