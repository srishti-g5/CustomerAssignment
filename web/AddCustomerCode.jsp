<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<% 
   
String fName=request.getParameter("fName");

String lName=request.getParameter("lName");
long phone=Long.parseLong(request.getParameter("phone"));
String street=(request.getParameter("street"));
String address=request.getParameter("address");
int id=(int)Math.random();
String city=request.getParameter("city");
String state=request.getParameter("state");
String email=request.getParameter("email");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerassignment","root","srishti");

PreparedStatement ps=con.prepareStatement("insert into customers values(?,?,?,?,?,?,?,?,?)");
ps.setString(1,fName);

ps.setString(2,lName);
ps.setString(3,street);

ps.setString(4,address);
ps.setString(5,city);
ps.setString(6,state);
ps.setString(7,email);
ps.setLong(8,phone);
ps.setLong(9,id);
ps.executeUpdate();

response.sendRedirect("CustomerList.jsp");

%>