<%-- 
    Document   : registration
    Created on : 9 Feb, 2014, 10:14:38 PM
    Author     : Admin
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title> registration</title>
    </head>
   <body>
     <FORM ACTION="processing.jsp" METHOD="post">
         <% String str=request.getParameter("errmsg");
         if(str!=null)
             {%>
             <center> <i> <h3> <%=str%></h3> </i> </center>
             <% } %>
    <center>
<h1>NEW USER REGISTRATION</h1>
<TABLE BORDER="0">
    <TR>
  <TD>FIRST NAME</TD>
  <TD ALIGN="left">
    <INPUT TYPE="text" SIZE="25" NAME="fname" >
  </TD>
 </TR>
 <TR>
  <TD>LAST NAME</TD>
  <TD ALIGN="left">
    <INPUT TYPE="text" SIZE="25" NAME="lname">
  </TD>
 </TR>

 <TR>
  <TD>USER ID</TD>
  <TD ALIGN="left">
    <INPUT TYPE="text" SIZE="25" NAME="userid" >
  </TD>
 </TR>
  <TR>
  <TD>PASSWORD</TD>
  <TD ALIGN="left">
    <INPUT TYPE="password" SIZE="25" NAME="pwd" >
  </TD>
 </TR>
 <TR>
 <TR>
  <TD>CONFIRM PASSWORD</TD>
  <TD ALIGN="left"> <INPUT TYPE="password" SIZE="25" NAME="cpwd" >
  </TD>
 </TR>
 <TR>
  <TD>EMAIL ADDRESS</TD>
  <TD ALIGN="left">
    <INPUT TYPE="text" SIZE="25" NAME="emailid" >
  </TD>
 </TR>
 <TR>
  <TD>PHONE NUMBER</TD>
  <TD ALIGN="left">
    <INPUT TYPE="text" SIZE="25" NAME="phno" >
  </TD>
 </TR>
 <TR>
  <TD>USER TYPE</TD>
  <TD ALIGN="left">
    <input type="radio" name="utype" value="trainer">TRAINER<br>
<input type="radio" name="utype" value="trainee">TRAINEE
  </TD>
 </TR>
 <TR>
  <TD>PHOTO</TD>
  <TD ALIGN="left">
      <input type="file" name="photo" size="25">
  </TD>
 </TR>
</TABLE>

<INPUT TYPE="submit" VALUE="Submit">
<INPUT TYPE="reset" VALUE="Clear">
    </center>
</FORM>
    </body>
</html>

