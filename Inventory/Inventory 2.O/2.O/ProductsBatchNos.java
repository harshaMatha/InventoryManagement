package com.shankar.entityModels;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "im_product_stock")
public class ProductsBatchNos {

	@Id
	@Column(name = "Product_ID")
	private int productID;
	@Override
	public String toString() {
		return "ProductsBatchNos [productID=" + productID + ", batchNo=" + batchNo + "]";
	}
	@Column(name = "Batch_No")
	private int batchNo;
	public int getProductID() {
		return productID;
	}
	
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getBatchNo() {
		return batchNo;
	}
	public void setBatchNo(int batchNo) {
		this.batchNo = batchNo;
	}


	public ProductsBatchNos(int batchNo) {
		super();
		this.batchNo = batchNo;
	}
}
