<%-- 
    Document   : index
    Created on : May, 2015, 5:56:49 PM
    Author     : user
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SHOP AROUND</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/popup.css" type="text/css" media="all" />
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>

<body>
    
<!-- Shell -->
<div class="shell">
    
  <!-- Header -->
  <%@include file="header.jsp"%>
  <!-- End Header -->
 
  <div align="center">
          <table width="850" border="0" >
            <tr>
                <td height="60" scope="col" style=" color: green; font-size: 17px">
                    <b>About Us</b>
                </td>    
            </tr>
          </table>
  
       <table width="850" border="0" >
              <tr> 
                  <td height="30" style=" color: blue; font-size: 14px"> Hello! We are ABES Students </td>
              </tr>
              <tr>
                  <td height="15"></td>
              </tr>
  
          </table>   
</div>
  <br><br><br><br><br><br><br>
  <!-- Footer -->
      <%@include file="footer.jsp"%>
  <!-- End Footer -->
  
</div>
<!-- End Shell -->

  <!-- sign up -->
    <%@include file="signup.jsp"%>
  <!--end sign up -->
  
  <!-- sign in -->
    <%@include file="signin.jsp"%>
  <!--end sign in -->
  
</body>
</html>
