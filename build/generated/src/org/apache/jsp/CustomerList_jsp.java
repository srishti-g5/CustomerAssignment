package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

public final class CustomerList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
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

    

 
      out.write("\n");
      out.write("<html>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css\">\n");
      out.write("        <head>\n");
      out.write("            <title>Customer Management Application</title>\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("\n");
      out.write("            <header>\n");
      out.write("                <nav class=\"navbar navbar-expand-md navbar-dark\" style=\"background-color: tomato\">\n");
      out.write("                    <div>\n");
      out.write("                        Customer CRUD\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                   \n");
      out.write("                </nav>\n");
      out.write("            </header>\n");
      out.write("            <br>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <!-- <div class=\"alert alert-success\" *ngIf='message'>{{message}}</div> -->\n");
      out.write("\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h3 class=\"text-center\">List of Customers</h3>\n");
      out.write("                    <hr>\n");
      out.write("                    <div class=\"container text-left\">\n");
      out.write("\n");
      out.write("                        <a href=\"AddCustomer.jsp\" class=\"btn btn-success\">Add\n");
      out.write("     New Customer</a>\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                    <table class=\"table table-bordered\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                               \n");
      out.write("                                <th>First Name</th>\n");
      out.write("                                <th>Last Name</th>\n");
      out.write("                                <th>Address</th>\n");
      out.write("                                <th>City</th>\n");
      out.write("                                <th>State</th>\n");
      out.write("                                <th>Email</th>\n");
      out.write("                                <th>Phone</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                           \n");
      out.write("                            ");

                    for(int i=0;i<list1.size();i++)
                    {
                    
      out.write("\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                       ");
      out.print(list1.get(i));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                         ");
      out.print(list2.get(i));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                         ");
      out.print(list3.get(i));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
      out.print(list4.get(i));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
      out.print(list5.get(i));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                         ");
      out.print(list6.get(i));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                         ");
      out.print(list7.get(i));
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                        <form action=\"CustomerDetails.jsp\">\n");
      out.write("                            <th>");
session.setAttribute("call",list8.get(i));
      out.write("\n");
      out.write("                                   <a href=\"CustomerDetails.jsp\" class=\"table-link  text-info\">\n");
      out.write("                                                                                <span class=\"fa-stack\">\n");
      out.write("                                                                                    <i class=\"fa fa-square fa-stack-2x\"></i>\n");
      out.write("                                                                                    <i class=\"fa fa-pencil fa-stack-1x fa-inverse\"></i>\n");
      out.write("                                                                                </span>\n");
      out.write("                                                                        </a>  </th>\n");
      out.write("                        </form>  \n");
      out.write("<!--                             <form action=\"DeleteCustomerCode.jsp\">\n");
      out.write("                            <th>\n");
      out.write("                                \n");
      out.write("                                    <input type=\"submit\" name=\"id\"value=\"\"></input></a>\n");
      out.write("                            </th>\n");
      out.write("                        </form>  -->\n");
      out.write("<button onclick=\"deleteCustomer(");
      out.print(list8.get(i));
      out.write(")\" type=\"button\">\n");
      out.write("                                                                                <span class=\"fa-stack\">\n");
      out.write("                                                                                    <i class=\"fa fa-square fa-stack-2x\"></i>\n");
      out.write("                                                                                    <i class=\"fa fa-trash-o fa-stack-1x fa-inverse\"></i>\n");
      out.write("                                                                                    i\n");
      out.write("                                                                                </span>\n");
      out.write("                                                                        </button>\n");
      out.write("                                    </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
}
      out.write("   \n");
      out.write("                          \n");
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </body>\n");
      out.write("        <script>\n");
      out.write("            function deleteCustomer(int id){\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("        </html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
