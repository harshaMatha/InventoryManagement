package main.dal.products;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import main.dao.products.ProductsDAO;
import main.models.productModels.dto.ProductProfit;
import main.models.productModels.entities.HSNEntityModel;
import main.models.productModels.entities.ProductsCategory;
import main.models.productModels.inputModels.ProductsProductIdInputModel;
import main.models.productModels.outputModels.ProductStockData;
import main.models.productModels.outputModels.ProductsReOrderList;

@Component
public class ProductsDAL implements ProductsDAO {

	@PersistenceContext
	private EntityManager entityManager;

	// Getting Product Information Based on Category Id
	@Transactional
	public List<ProductStockData> getProductsByCategory(int categoryId) {
		String queryString = "SELECT new main.models.productModels.outputModels.ProductStockData(p.productId,p.productName,ps.batchNo,ps.productStock,p.productReorderLevel,p.productHsnCode,ps.productSalePrice,ps.productMrp,ps.productCost) FROM Products p JOIN  p.productStocks ps  WHERE p.category = :categoryId";
		TypedQuery<ProductStockData> query = entityManager.createQuery(queryString, ProductStockData.class);
		query.setParameter("categoryId", categoryId);
		List<ProductStockData> productsList = query.getResultList();

		return productsList;
	}


//It return Products Data by taking the productId as an input
	@Override
	public List<ProductStockData> getProductsByProductId(int selectedProductId) {

		String queryString = "SELECT new main.models.productModels.outputModels.ProductStockData(p.productId, p.productName, ps.batchNo, p.productReorderLevel,p.productHsnCode,ps.productStock, ps.productSalePrice, ps.productMrp, ps.productCost) FROM Products p JOIN p.productStocks ps WHERE  p.productId = :productId";
		TypedQuery<ProductStockData> query = entityManager.createQuery(queryString, ProductStockData.class);
		query.setParameter("productId", selectedProductId);

		return query.getResultList();

	}


	
//It return products Data by taking the BatchNo and ProductId as an input
	@Override
	public ProductStockData getQuantityandpriceByProductIdOrBatchNo(int selectedProductId, int selectedBatchNo) {
		String queryString = "SELECT new main.models.productModels.outputModels.ProductStockData(p.productId, p.productName, ps.batchNo, ps.productStock,p.productReorderLevel,p.productHsnCode, ps.productSalePrice, ps.productMrp, ps.productCost) FROM Products p JOIN p.productStocks ps WHERE  p.productId = :productId AND ps.batchNo=:batchNo";
		TypedQuery<ProductStockData> query = entityManager.createQuery(queryString, ProductStockData.class);
		query.setParameter("productId", selectedProductId);
		query.setParameter("batchNo", selectedBatchNo);
		return query.getSingleResult();
	}



//It returns List of Re-order Products 
	@Override
	public List<ProductsReOrderList> getReOrderLevelProducts() {
		String queryString = "SELECT new main.models.productModels.outputModels.ProductsReOrderList(p.productId, p.productName, p.productReorderLevel, SUM(ps.productStock) as sumOfProducts) "
				+ "FROM Products p " + "JOIN ProductStock ps ON p.productId = ps.productId "
				+ "WHERE p.productStatus ='Active'" + "GROUP BY p.productId, p.productName, p.productReorderLevel "
				+ "HAVING p.productReorderLevel >= SUM(ps.productStock)";
		TypedQuery<ProductsReOrderList> query = entityManager.createQuery(queryString, ProductsReOrderList.class);
		return query.getResultList();
	}


//It persist the category created by procurement team
	@Transactional
	public boolean saveCategory(ProductsCategory productsCategory) {
		entityManager.persist(productsCategory);
		return true;
	}


	
//It persist the HSN created by the procurement team
	@Transactional
	public boolean saveHSN(HSNEntityModel hsnEntityModel) {

		entityManager.persist(hsnEntityModel);

		return false;
	}


// Return Product Profit by taking Product Id as Input.
	@Override
	@Transactional
	public ProductProfit getProfitPercentage(ProductsProductIdInputModel pp) {
		ProductProfit pf = (ProductProfit) entityManager
				.createQuery("select new main.models.productModels.dto.ProductProfit(p.profitPercentage)"
						+ " from Products p where p.productId=:id")
				.setParameter("id", pp.getProductId()).getSingleResult();

		return pf;

	}

}