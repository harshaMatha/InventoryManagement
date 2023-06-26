package main.dal.products;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import main.dao.products.ProductCategoryDAO;
import main.models.productModels.entities.ProductsCategory;

@Component
public class ProductsCategoryDAL implements ProductCategoryDAO {
 
	@PersistenceContext
	private EntityManager entityManager;
	
    //Getting Product Category ID,Category Name
	@Transactional
	public List<ProductsCategory> getProductCategories() {
		List<ProductsCategory> categoryList = entityManager.createQuery("SELECT v FROM ProductsCategory v").getResultList();

		return categoryList;
	}
}
