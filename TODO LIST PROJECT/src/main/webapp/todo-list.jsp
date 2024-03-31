<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.dao.TodoDao"%>
<%@ page import="com.model.TODO"%>
<%@page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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

<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Todo
					App</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="ReadTodo.jsp"
					class="nav-link">Todos</a></li>
			</ul>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="login.jsp"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Todos</h3>
			<hr>
			<div class="container text-left">

				<a href="index.jsp"
					class="btn btn-success">Add Todo</a>
			</div>
			<br>
			<table class="table table-bordered">
			<thead>
            <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Title</th>
            <th>Description</th>
            <th>Target Date</th>
            <th>Status</th>
             <th>Actions</th>
           </tr>
           </thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="todo" items="${todoList}">
            <tr>
                <td>${todo.id}</td>
                <td>${todo.username}</td>
                <td>${todo.title}</td>
                <td>${todo.description}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.status}</td>                
               <td>
                <a href="update.jsp?id=${todo.id}">Update</a>
                  &nbsp;&nbsp;&nbsp;
               <a href="DeleteTodo.jsp?id=${todo.id}">Delete</a>

                </td>
            </tr>
        </c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

 <jsp:include page="common/footer.jsp"></jsp:include> 
</body>
</html>