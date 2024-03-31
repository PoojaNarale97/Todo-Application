<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.dao.TodoDao"%>
<%@ page import="com.model.TODO"%>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update TODO</title>
   <link rel="stylesheet" href="CSS/form.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include> 

<h1>Update TODO</h1>
<div class="container col-md-8 col-md-offset-3" style="overflow: auto">

<div class="form">
    <h2>Update Todo</h2>
    <form action="updateTodo.jsp" method="post">
     <div class="form-group">
        <input type="hidden" name="id" value="${param.id}">
        </div>
         <div class="form-group">
        Todo Title: <input type="text" name="title"><br>
        </div>
         <div class="form-group">
        Username: <input type="text" name="username"><br>
        </div>
         <div class="form-group">
        Todo Description: <input type="text" name="description"><br>
        </div>
         <div class="form-group">
        Target Date: <input type="text" name="targetDate"><br>
        </div>
         <div class="form-group">
        Status (is Done): <input type="text" name="isDone"><br>
        </div>
         <div class="form-group">
        <input type="submit" value="Update Todo"><br>
        </div>
    </form>
</div>
</div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
