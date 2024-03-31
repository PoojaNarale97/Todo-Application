<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.dao.TodoDao"%>
<%@ page import="com.model.TODO"%>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDate" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add TODO</title>
      <link rel="stylesheet" href="CSS/form.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include> 
<h1>Add TODO</h1>
<div class="form">
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String title = request.getParameter("title");
    String username = request.getParameter("username");
    String description = request.getParameter("description");
   // LocalDate targetDate = LocalDate.now(); // Assuming current
     LocalDate targetDate = LocalDate.parse(request.getParameter("targetDate"));
    boolean isDone = Boolean.valueOf(request.getParameter("isDone"));

    TodoDao dao = new TodoDao();
    TODO todo = new TODO(id, title, username, description, targetDate, isDone);
    int result = dao.addTodo(todo);
    
    // Set the 'result' attribute in request scope
    request.setAttribute("result", result);
%>

<c:choose>
    <c:when test="${requestScope.result > 0}">
        <div style="color: green;"><h1>TODO added successfully!</h1></div>
        <form action="todo-list.jsp">
            <button type="submit">Go Back to TODO List</button>
        </form>
    </c:when>
    <c:otherwise>
        <div style="color: red;">Failed to add TODO!</div>
    </c:otherwise>
</c:choose>
</div>
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
