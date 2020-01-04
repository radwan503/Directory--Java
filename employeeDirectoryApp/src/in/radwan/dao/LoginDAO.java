package in.radwan.dao;

import in.radwan.entity.Login;

public interface LoginDAO {
	
	String authenticate(Login login);

}
