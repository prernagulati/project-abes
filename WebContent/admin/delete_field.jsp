<%-- 
    Document   : delete_field
    Created on : Apr 10, 2013, 9:48:08 PM
    Author     : user
--%>
<%@page session="true" %>
<%@page contentType="text/html" import="java.sql.*;" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
                    
                    String field_no1=request.getParameter("no");
                    String c_id=request.getParameter("c_id");
                    int field_no=Integer.parseInt(field_no1);
                          Connection con=null;
                          Statement st=null;
                          ResultSet rs=null;
                          Statement st1=null;
                          ResultSet rs1=null;
                          ResultSetMetaData metaData=null;
                    try{
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        con=DriverManager.getConnection
                       ("jdbc:oracle:thin:@127.0.0.1:1521:xe","eshopping","nolin");
                          st=con.createStatement();
                          st1=con.createStatement();
                          
                          rs=st.executeQuery("select c_name from category where c_id='"+c_id+"'");
                          rs.next();
                          
                          rs1=st1.executeQuery("select * from "+rs.getString(1)+"");
                          rs1.next();
                          metaData = rs1.getMetaData();
                          String f_name=metaData.getColumnName(field_no);
                          
                          PreparedStatement ps= con.prepareStatement("alter table "+rs.getString(1)+" drop column "+f_name+"");
                          ps.executeUpdate();
                          
                          
                         response.sendRedirect("edit_category.jsp?name="+rs.getString(1)+"&c_id="+c_id+"");
                    }catch(Exception e){out.print("outer try error");}finally{try{con.close();}catch(Exception e){}}
                        %>
    </body>
</html>
