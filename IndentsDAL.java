package main.dal.indents;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import main.models.indentModels.entities.ProcurementIndentProductsList;
import main.models.indentModels.entities.ProcurementIndentsList;
import main.models.indentModels.outputModels.ProcurementIndentProductListData;
import main.models.storeModels.inputmodels.IndentId;

@Component
public class IndentsDAL {

	@PersistenceContext
	private EntityManager entityManager;

	@Transactional
	public boolean saveProcurementIndent(ProcurementIndentsList procurementIndentsList) {
		System.out.println("Inside storeIndentsDao");
		System.out.println(procurementIndentsList);
		entityManager.persist(procurementIndentsList);
		List<ProcurementIndentProductsList> pipl;
		pipl = procurementIndentsList.getProductsList();
		for (ProcurementIndentProductsList s : pipl) {
			s.setIndentID(procurementIndentsList.getIndentID());
			System.out.println(s);
			entityManager.persist(s);
		}
		System.out.println(procurementIndentsList);
		return true;
	}

	@Transactional
	public List<ProcurementIndentsList> getAllIndents() {
		List<ProcurementIndentsList> l = entityManager.createQuery("SELECT v FROM ProcurementIndentsList v")
				.getResultList();
		for (ProcurementIndentsList v : l) {
			System.out.println(v.toString());
		}
		return l;
	}

	@Transactional
	public List<ProcurementIndentProductListData> getProcurementIndentProductsList(IndentId indentid) {
		int data = indentid.getIndentId();
		System.out.println(data);
		List<ProcurementIndentProductListData> s = entityManager.createQuery(
				"SELECT NEW main.models.indentModels.outputModels.ProcurementIndentProductListData(e.productId, p.productName, pc.productCategoryName, e.quantity) "
						+ "FROM ProcurementIndentProductsList e "
						+ "JOIN main.models.productModels.entities.Products p ON e.productId = p.productId "
						+ "JOIN main.models.productModels.entities.ProductsCategory pc ON p.category = pc.productCategoryId "
						+ "WHERE e.indentID = :data",
				ProcurementIndentProductListData.class).setParameter("data", data).getResultList();
		for (ProcurementIndentProductListData p : s)
			System.out.println("Inside " + p);

		return s;

	}
	@Transactional
	 public List<ProcurementIndentsList> filterIndents(int selectedIndentId, String fromDate, String toDate) {
	        List<ProcurementIndentsList> filteredIndents;


	            // Create the JPA query to filter indents
	            StringBuilder queryString = new StringBuilder("SELECT i FROM ProcurementIndentsList i WHERE 1=1");

	            // Filter by Indent ID
	            if (selectedIndentId!=0) {
	                queryString.append(" AND i.indentID IN :indentIds");
	            }

	            // Filter by Date range
	            if (fromDate != null && toDate != null) {
	                queryString.append(" AND i.d BETWEEN :fromDate AND :toDate");
	            } else if (fromDate != null) {
	                queryString.append(" AND i.d >= :fromDate");
	            } else if (toDate != null) {
	                queryString.append(" AND i.d <= :toDate");
	            }

	            // Create the typed query
	            javax.persistence.TypedQuery<ProcurementIndentsList> query = entityManager.createQuery(queryString.toString(), ProcurementIndentsList.class);

	            // Set parameters for Indent IDs
	            if (selectedIndentId!=0) {
	                query.setParameter("indentIds", selectedIndentId);
	            }

	            // Set parameters for Date range
	            if (fromDate != null) {
	                query.setParameter("fromDate", parseDate(fromDate));
	            }
	            if (toDate != null) {
	                query.setParameter("toDate", parseDate(toDate));
	            }

	            // Execute the query and get the filtered indents
	            filteredIndents = query.getResultList();

	        return filteredIndents;
	    }

	    private java.util.Date parseDate(String dateString) {
	        // Basic assumption: Parsing date from string as yyyy-MM-dd format
	        try {
	            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	            return dateFormat.parse(dateString);
	        } catch (ParseException e) {
	            e.printStackTrace();
	            return null;
	        }
	    }

}