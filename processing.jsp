<%-- 
    Document   : processing
    Created on : 10 Feb, 2014, 8:07:12 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>processing</title>
    </head>
    <body>

<%
String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String username=request.getParameter("userid");
String password=request.getParameter("pwd");
String cpassword=request.getParameter("cpwd");
String email=request.getParameter("emailid");
String phone=request.getParameter("phno");
String usertype=request.getParameter("utype");
int x= password.compareTo(cpassword);
int atpos=email.indexOf("@");
int dotpos=email.lastIndexOf(".");
if(firstname==null || firstname.length()>30 || lastname==null || username==null || username.length()>10 || password==null || password.length()<8 || x!=0 || phone.length()!=10 || usertype==null || atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length())
    {
    response.sendRedirect("registration.jsp"+"?errmsg="+"There are some missing values");
    }
else
    {
    response.sendRedirect("sucess.jsp");
    }
%>
    </body>
</html>