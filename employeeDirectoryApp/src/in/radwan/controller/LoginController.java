package in.radwan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.radwan.dao.LoginDAO;
import in.radwan.dao.LoginImpl;
import in.radwan.entity.Login;


public class LoginController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	
	LoginDAO loginDAO = null;
	
	public LoginController(){
		loginDAO = new LoginImpl();
		
	}
	
	
	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 HttpSession session = req.getSession();
		 Login login = new Login();
		 login.setEmail(req.getParameter("email"));
		 login.setPassword(req.getParameter("password"));
		 
		 String status = loginDAO.authenticate(login);
		 
		 if(status == "true"){
			 session.setAttribute("email", login.getEmail());
			 resp.sendRedirect("EmployeeController?action=LIST");
		 }
		 
		 if(status.equals("false")){
			 resp.sendRedirect("index.jsp?status=false");
		 }
		 
		 if(status.equals("error")){
			 resp.sendRedirect("index.jsp?status=error");
		 }
		 
	
	}

}
