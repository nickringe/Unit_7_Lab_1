<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add A Grade</title>
</head>
<body>
<form action="/add" method="post">
<h2>Add Grade details below. All fields are required.</h2>
				Name: <input name="name" type="text" required/>
		   <br> Type: <input name="type" type="text" required />
		   <br> Score: <input name="score" type="number" step="0.01" min="0" required/>
		   <br> Total: <input name="total" type="number" step="0.01" min="0" required />
		   <br> <input type="submit" class="button" onclick="/confirmation" />
			</form>
</body>
</html>