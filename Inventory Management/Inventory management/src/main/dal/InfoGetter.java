package main.dal;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import main.models.Employee;
import main.models.EmployeeMapper;

public class InfoGetter implements InfoGetterInterface {

	JdbcTemplate jdbcTemplate = null;
	String fetchData = "select empno,ename from emp";

	@Autowired
	public InfoGetter(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Employee> getEmployeeData() {
		return jdbcTemplate.query(fetchData, new EmployeeMapper());
	}

}
