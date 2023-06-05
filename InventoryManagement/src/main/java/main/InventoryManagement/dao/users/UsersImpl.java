package main.InventoryManagement.dao.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import main.InventoryManagement.models.Vendor;

@Component
public class UsersImpl implements UsersOperations{

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Override
	public void createVendor(Vendor v) {
		hibernateTemplate.save(v);
	}

	
	
}
