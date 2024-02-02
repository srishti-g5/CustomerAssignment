<%-- 
    Document   : DeleteCustomer
    Created on : 2 Feb, 2024, 9:09:45 PM
    Author     : sgsri
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<% 
   String id=request.getParameter("id");
int idd=Integer.parseInt(id);



Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerassignment","root","srishti");

PreparedStatement ps=con.prepareStatement("delete from customers where id=?");

ps.setInt(1,idd);
ps.executeUpdate();

response.sendRedirect("CustomerList.jsp");

%>
