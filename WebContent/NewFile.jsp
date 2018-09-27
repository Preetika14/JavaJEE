<%@page import="com.niit.web.DeptServ"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.cts.dao.*"%>
<%@ page import="com.cts.Synchronized.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
h1 {
	color: green
}

h2 {
	color: yellow
}
</style>
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
	<h1>My first JSP!!!!</h1>
	<h2><%=new String("My first JSP")%></h2>
	<h2><%=new Date()%></h2>
	<h2><%=new EmployeeDAO().getEmployee(100L).getFirst_name()%></h2>

	<%
		int i = 0;
		for (i = 0; i < 10; i++) {
			out.println("<strong> hello" + i + " " + count++ + "</strong>");
			//out.write("Hello");
			//System.out.println("Hello");     console
			// out.println("hello");
			//out.println("<h3>Hello "+i+"</h3>");
		}
	%>
	<!-- <h1>Hello</h1>   by using html tags
 -->
	<%-- <%
} %> --%>
	<%
		int j = 0;
		for (j = 0; j < 10; j++) {
	%>
	<strong style="color: yellow"> HII <%=j%></strong>
	<%
		}
	%>
	<%! int count = 0;
	%>
<%-- <% 	EmployeeDAO employee= new EmployeeDAO();
	 List <Employee> ls=employee.getEmployeesWithConditionsJoin("Shipping"); 
	 Iterator<Employee> i1=ls.iterator(); 
	 %>
	<table border="1">
		<thead>
			<th>FName</th>
			<th>Lname</th>
		</thead>
		<%
			while (i1.hasNext()) {
				Employee emp = i1.next();
		%>
		<tr>
			<td><%=emp.getFirst_name()%></td>
			<td><%=emp.getLast_name()%></td>
		</tr>
		<%
			}
		%> --%>
	</table>
	<br>
	<h3>
		<jsp:useBean id="cb" class="com.cts.Synchronized.Employee" />
		<jsp:setProperty name="cb" property="first_name" value="Mahesh" />
		<jsp:getProperty name="cb" property="first_name"/>
		</h3>
</body>
</html>
