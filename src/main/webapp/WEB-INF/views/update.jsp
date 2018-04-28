<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

input[type=submit] {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 10px 26px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 20%;
    border-radius: 10%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<form action="/update1"  method="post"  >
  
  <h3>Save Changes</h3>

  
    
 
    
    <input type="hidden" value="${student.id }" name="id" >
     <input type="hidden" value="${student.username }" name="username" >
     <input type="hidden" value="${student.password }" name="password" >
     <label for="major"><b>Major</b></label>
    <input type="text" value="${student.major }" name="major" >  
     <br>
    <label for="name"><b>Name</b></label>
    <input type="text" value="${student.name }" name="name" >  
    <input type="submit" value="update">
    
  
    
  </form>
</body>
</html>