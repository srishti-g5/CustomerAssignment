<%-- 
    Document   : CustomerDetails
    Created on : 2 Feb, 2024, 5:20:38 PM
    Author     : sgsri
--%>

<%@page import="javax.websocket.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : CustomerList
    Created on : 1 Feb, 2024, 8:30:15 PM
    Author     : sgsri
--%>


<!DOCTYPE html>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager,java.util.ArrayList"%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerassignment","root","srishti");
//String id=(String)session.getAttribute("call");
//int idd=Integer.parseInt(id);
String id=request.getParameter("id");
int idd=Integer.parseInt(id);
session.setAttribute(id,"call");
String first_name="";
String last_name="";
String street="";
String address="";
String city="";
String state="";
String email="";
Long phone=0l;

PreparedStatement ps=con.prepareStatement("select * from customers where id=?");
ps.setInt(1,idd);
ResultSet rs = ps.executeQuery();
while(rs.next())
{
     first_name=rs.getString(1);
     last_name=rs.getString(2);
     street=rs.getString(3);
     address=rs.getString(4);
     city=rs.getString(5);
     state=rs.getString(6);
     email=rs.getString(7);
     phone=rs.getLong(8);
    idd=rs.getInt(9);
      

}

    

 %>
<html>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
        <head>
            <title>Customer Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        Customer CRUD
                    </div>

                   
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Customer</h3>
                    <hr>
                    <div class="container text-left">

                      <form action="UpdateCustomerCode.jsp">
             <table width="50%"align="left"border="0"cellspacing="5"cellpadding="3">
<!--                 <tr bgcolor="white">
                    <td align="center"colspan="2"><h4>Customer Registration</h4></td>
                    
                </tr>-->
<!--<tr align="center">
                    <td><font color="black">USER ID</td>
                   
               
                    <td><input type="text" name="uId" class="inputtheme"value="<%=session.getAttribute("CALL")%>"></td>
                   
                </tr>-->
                                <tr align="center"colspace="2">
                                    
                    <td><font color="black">First Name</td>
                   
               <input type="hidden" name="id"value="<%=idd%>">
                    <td><input type="text" name="fName"class="inputtheme"value="<%=first_name%>"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Last Name</td>
                   
               
                    <td><input type="text" name="lName" class="inputtheme"value="<%=last_name%>"></td>
                    
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Street</td>
                   
               
                    <td><input type="integer" name="street" class="inputtheme" value="<%=street%>"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Address</td>
                   
               
                    <td><input type="float" name="address" class="inputtheme"value="<%=address%>"></td>
                   
                </tr>
<tr align="center">
                    <td><font color="black">City</td>
                   
               
                    <td><input type="integer" name="city" class="inputtheme"value="<%=city%>"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">State</td>
                   
               
                    <td><input type="float" name="state" class="inputtheme"value="<%=state%>"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Email</td>
                   
               
                    <td><input type="integer" name="email" class="inputtheme"value="<%=email%>"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Phone</td>
                   
               
                    <td><input type="float" name="phone" class="inputtheme"value="<%=phone%>"></td>
                   
                </tr>

                                


            
               <tr align="center">
                   <td><input type="submit" value="SAVE"class="buttontheme"></td>
<!--                   <td><input type="reset"value="CLEAR"class="buttontheme"></td>-->
                </tr>
           </table> 
               </form>
                </div>
            </div>
        </body>
       
        </html>
