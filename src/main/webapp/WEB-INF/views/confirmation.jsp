<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<body>
Addition confirmed! Details:<br><br>

Name: <c:out value="${name}"></c:out><br>
Type: <c:out value="${type}"></c:out><br>
Score: <fmt:formatNumber value="${score}" maxFractionDigits="1"></fmt:formatNumber><br>
Total: <fmt:formatNumber value="${total}" maxFractionDigits="1"></fmt:formatNumber>

<br><br>
<a href="/">Back to Home</a>

</body>
</html>