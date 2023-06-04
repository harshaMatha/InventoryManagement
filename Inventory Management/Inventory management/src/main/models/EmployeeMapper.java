package main.models;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EmployeeMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

		Employee emp = new Employee();
		emp.setEmpno(rs.getInt("empno"));
		emp.setEname(rs.getString("ename"));
		return emp;
	}

}
