<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.dao.TodoDao"%>
<%@ page import="com.model.TODO"%>
<%@page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TODO List</title>
<link rel="stylesheet" href="CSS/table.css">
  <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->

</head>
<body>

<%
// Create TodoDao object
TodoDao dao = new TodoDao();

// Call getAllTodo method to get all TODO it
List<TODO> todoList = dao.getAllTodo();

// Set the todoList in request attribute for access in JSP
request.setAttribute("todoList", todoList);
%>

<h1>TODO List</h1>

 <div class="grid-container">
        <table id="customers">
    <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Title</th>
            <th>Description</th>
            <th>Target Date</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="todo" items="${todoList}">
            <tr>
                <td>${todo.id}</td>
                <td>${todo.username}</td>
                <td>${todo.title}</td>
                <td>${todo.description}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.status}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
 </div>
</body>
</html>
