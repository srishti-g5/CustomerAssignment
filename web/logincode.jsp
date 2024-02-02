<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane" %>

<%
  
  String password=request.getParameter("pass");
  String id=request.getParameter("uId");  
  
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/customerassignment","root","srishti");
PreparedStatement ps = con.prepareStatement("select * from login where loginid=? and password=?");



ps.setString(1,id);
ps.setString(2, password);
ResultSet rs = ps.executeQuery();
if(rs.next()){
        response.sendRedirect("CustomerList.jsp");
    }
    else{
    JOptionPane.showMessageDialog(null,"Wrond id or Password!");
    response.sendRedirect("Login.jsp");
    }
%>