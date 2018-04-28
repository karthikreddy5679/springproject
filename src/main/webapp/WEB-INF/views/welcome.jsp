 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
input[type=button] {
    background-color: #004de6;
    border: none;
    color: white;
    padding: 10px 26px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
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
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<c:forEach var="stud" items="${students}">
<h2>Welcome ${stud.name}!!</h2>
</c:forEach>
<table>
  <tr>
    <th>Username</th>
    <th>Name</th>
    <th>ID</th>
    <th>Major</th>
    <th>Update</th>
    
    
  </tr>
<c:forEach var="stud" items="${students}">
   <c:url var="update_link" value="/update" >
   <c:param name="update" value="${stud.id }"></c:param>
   </c:url>
  <tr>
    <td>${stud.username}</td>
    <td>${stud.name}</td>
    <td>${stud.id}</td>
    <td>${stud.major}</td>
   
    <td><input type="submit" onclick="window.location.href = '${update_link}';" value="Update"></td>
    
  </tr>
</c:forEach>
    
</table>
<button onclick="window.location.href = '/';">Log out</button>
</body>
</html>
