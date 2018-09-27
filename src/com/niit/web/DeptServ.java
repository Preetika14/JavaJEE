package com.niit.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.Synchronized.Employee;
import com.cts.dao.EmployeeDAO;

/**
 * Servlet implementation class DeptServ
 */
@WebServlet("/DeptServ")
public class DeptServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter pw =response.getWriter();
		EmployeeDAO employee= new EmployeeDAO();
		String nameOfDepartment = request.getParameter("dname");
		List<com.cts.Synchronized.Employee> ls = employee.getEmployeesWithConditionsJoin(nameOfDepartment);
		Iterator i=ls.iterator();
		pw.println("<table border=\"1\"><thead><th>FName</th><th>Lname</th></thead>");
		while(i.hasNext()){
			Object[] emp=(Object[])i.next();
			pw.println("<tr>"+"<td>"+emp[0]+"</td>"+"<td>"+emp[1]+"</td>"+"</tr>");
		} 
		pw.println("</table>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
