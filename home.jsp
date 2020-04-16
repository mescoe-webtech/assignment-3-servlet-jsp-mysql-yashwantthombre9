<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body bgcolor="cyan">
<%
if((session.getAttribute("unm")==null)){
	response.sendRedirect("login.jsp");
}
String uname = request.getParameter("username");
String upwd = request.getParameter("password");
%>
<h1>Welcome!!! <%= uname %></h1><br><br>
<h2><i>Thanks for Registering with us!</i></h2>



</body>
</html>