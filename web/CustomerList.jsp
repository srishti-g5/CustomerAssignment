<%-- 
    Document   : CustomerList
    Created on : 1 Feb, 2024, 8:30:15 PM
    Author     : sgsri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager,java.util.ArrayList"%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customerassignment","root","srishti");


PreparedStatement ps=con.prepareStatement("select first_name,last_name,address,city,state,email,phone,id from customers");
ArrayList list1 = new ArrayList();
ArrayList list2 = new ArrayList();
ArrayList list3 = new ArrayList();
ArrayList list4 = new ArrayList();
ArrayList list5 = new ArrayList();
ArrayList list6 = new ArrayList();
ArrayList list7 = new ArrayList();
ArrayList list8 = new ArrayList();
ResultSet rs = ps.executeQuery();
while(rs.next())
{
    list1.add(rs.getString(1));
    list2.add(rs.getString(2));
    list3.add(rs.getString(3));
    list4.add(rs.getString(4));
        list5.add(rs.getString(5));
    
        list6.add(rs.getString(6));
        list7.add(rs.getLong(7));
         list8.add(rs.getInt(8));
      

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
                    <h3 class="text-center">List of Customers</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="AddCustomer.jsp" class="btn btn-success">Add
     New Customer</a>
                    </div>
                    <div>
        <form action="SearchCode.jsp">
            <label>Search By:
                <select name="searchBy">
                     <option value="id">ID</option>
                    <option value="first_name">First Name</option>
                    <option value="city">City</option>
                    <option value="state">State</option>
                   

                </select>
            </label>
            <input type="text" name="searchTerm" placeholder="Search term" />
            <button type="submit">Search</button>
            <a href="CustomerList.jsp">Clear Search</a>
        </form>
                        
    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                               
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Address</th>
                                <th>City</th>
                                <th>State</th>
                                <th>Email</th>
                                <th>Phone</th>
                            </tr>
                        </thead>
                        <tbody>
                           
                            <%
                    for(int i=0;i<list1.size();i++)
                    {
                    %>

                                <tr>
                                    <td>
                                       <%=list1.get(i)%>
                                    </td>
                                    <td>
                                         <%=list2.get(i)%>
                                    </td>
                                    <td>
                                         <%=list3.get(i)%>
                                    </td>
                                     <td>
                                         <%=list4.get(i)%>
                                    </td>
                                     <td>
                                         <%=list5.get(i)%>
                                    </td>
                                    <td>
                                         <%=list6.get(i)%>
                                    </td>
                                    <td>
                                         <%=list7.get(i)%>
                                    </td>
                                    <td>
                        <form action="CustomerDetails.jsp">
                            <th><input type="hidden" name="id"value="<%=list8.get(i)%>">
                                   <input type="submit" value="edit"></input>
                                                                                <span class="fa-stack">
                                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                                                </span>
                                                                         </th>
                        </form>  
                             <form action="DeleteCustomerCode.jsp">
                            <th>
                                <input type="hidden" name="id"value="<%=list8.get(i)%>">
                                    <input type="submit" name="id"value="Delete"></input>
                            </th>
                        </form>  
<!--                                        <input type="submit" name="id"value="">
                                                                                <span class="fa-stack">
                                                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                                                                  <th>
                      
                                                                                </span>
                                                                       </input>
                                    </th>-->
                                    </td>
                        </tr>
                        <%}%>   
                          

                        </tbody>

                    </table>
                </div>
            </div>
        </body>
<!--        <script>
            function deleteCustomer(int id){
                        
            }
            </script>-->
        </html>
