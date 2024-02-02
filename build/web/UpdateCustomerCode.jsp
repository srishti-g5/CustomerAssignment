<%-- 
    Document   : UpdateCustomerCode
    Created on : 2 Feb, 2024, 8:48:20 PM
    Author     : sgsri
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<% 
   String id=request.getParameter("id");
 int idd=Integer.parseInt(id);
String fName=request.getParameter("fName");

String lName=request.getParameter("lName");
long phone=Long.parseLong(request.getParameter("phone"));
String street=(request.getParameter("street"));
String address=request.getParameter("address");
//int id=(int)Math.random();
String city=request.getParameter("city");
String state=request.getParameter("state");
String email=request.getParameter("email");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerassignment","root","srishti");

PreparedStatement ps=con.prepareStatement("update customers set first_name=?,last_name=?,street=?,address=?,city=?,state=?,email=?,phone=? where id=?");
ps.setString(1,fName);

ps.setString(2,lName);
ps.setString(3,street);

ps.setString(4,address);
ps.setString(5,city);
ps.setString(6,state);
ps.setString(7,email);
ps.setLong(8,phone);
ps.setInt(9,idd);
ps.executeUpdate();

response.sendRedirect("CustomerList.jsp");

%>
