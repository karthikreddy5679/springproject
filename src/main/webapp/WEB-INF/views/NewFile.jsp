<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=submit] {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 10px 26px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
<body>
  
    <form action="/check"  method="GET"  >
  
<center>
  <h2>Updated Successfully</h2>
    
 <br>
    
    <input type="hidden" value="${student.id }" name="id" >
     <input type="hidden" value="${student.username }" name="username" >
     <input type="hidden" value="${student.password }" name="password" >
    
    <input type="hidden" value="${student.major }" name="major" >  
     
  
    <input type="hidden" value="${student.name }" name="name" >  
    <input type="submit" value="Return">
    
  
    </center>
  </form>
  
</body>
</html>