package in.radwan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import in.radwan.entity.Login;
import in.radwan.util.DBConnectionUtil;

public class LoginImpl implements LoginDAO{

	@Override
	public String authenticate(Login login) {
		
		String sql = "select * from tbl_login where email=? and password=?";
		
		try{
			Connection connection=DBConnectionUtil.openConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, login.getEmail());
			preparedStatement.setString(2, login.getPassword());
			ResultSet rs = preparedStatement.executeQuery();
			
			if(rs.next()){
				return "true";
			}
			else{
				return "false";
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return "error";
		
	}



}
