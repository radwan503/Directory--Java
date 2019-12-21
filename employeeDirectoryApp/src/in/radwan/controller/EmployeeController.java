package in.radwan.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.radwan.dao.EmployeeDAO;
import in.radwan.dao.EmployeeDAOImpl;
import in.radwan.entity.Employee; 

public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	EmployeeDAO employeeDAO = null;
	
    public EmployeeController() {
        
    	employeeDAO = new EmployeeDAOImpl();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Employee>list = employeeDAO.get();
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/employeeList.jsp");
		dispatcher.forward(request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
