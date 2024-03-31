<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo management </title>
<link rel="stylesheet" href="CSS/form.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include> 
<h1>Todo management</h1>

<div class="container col-md-8 col-md-offset-3" style="overflow: auto">

  <div class="form">
    <h2>Add Todo</h2>
    <form action="AddTodo.jsp" method="get">
    <div class="form-group">
      Todo Id:<input type="text" name="id"><br>
       </div>
     <div class="form-group">
      Todo tiltle:<input type="text" name="title"><br>
       </div>
      <div class="form-group">
      Username:<input type="text" name="username"><br>
       </div>
      <div class="form-group">
      Todo Description:<input type="text" name="description"><br>
       </div>
      <div class="form-group">
      Target_Date:<input type="text" name="targetDate"><br>
       </div>
      <div class="form-group">
      Status is_Done:<input type="text" name="isDone"><br>   
       </div>
     
      <input type="submit" value="Add Todo" class="btn btn-primary"><br>
    </form>
  </div>
    

 </div>
 

<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
