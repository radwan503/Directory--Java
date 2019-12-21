 package in.radwan.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import in.radwan.entity.Employee;
import in.radwan.util.DBConnectionUtil;

public class EmployeeDAOImpl implements EmployeeDAO {
	
	Connection conncetion = null;
	Statement statement = null;
	ResultSet resultSet = null;
	

	@Override
	public List<Employee> get() {
		
		
		List<Employee> list =  null;
		Employee employee = null;
		
		try{
			
			list = new ArrayList<Employee>();
			
			String sql = "SELECT * FROM tbl_employee";
			conncetion = DBConnectionUtil.openConnection();
			statement  = conncetion.createStatement();
			resultSet  = statement.executeQuery(sql);
			
			while(resultSet.next()){
				employee = new Employee();
				employee.setId(resultSet.getInt("id"));
				employee.setName(resultSet.getString("name"));
				employee.setDepartment(resultSet.getString("department"));
				employee.setDob(resultSet.getString("dob"));
				list.add(employee);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return list;
		
	}

}
