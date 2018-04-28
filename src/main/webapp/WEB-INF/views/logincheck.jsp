<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login check</title>
</head>
<body> 
<h2>hello</h2>
<c:forEach var="stud" items="${student}">
<% String uname=request.getParameter("username");
String pwd=request.getParameter("password");
String u="{stud.username}"; 
String p="{stud.password}";

while((uname.equals(u) && pwd.equals(p))) {
	session.setAttribute("username",uname);
	response.sendRedirect("/show-students");
	}  
	%>
</c:forEach>
</body>
</html>