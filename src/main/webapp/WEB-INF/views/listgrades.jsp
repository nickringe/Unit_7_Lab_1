<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<title>Grades Listed Here</title>
</head>
<body>
<c:if test="${not empty grades}">
		
	

	 <table class=table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Type</th>
				<th>Score</th>
				<th>Total</th>
				<th>Percentage</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="grades" items="${grades}">
				<tr>
					<td><c:out value="${grades.id }"> </c:out></td>
					<td><c:out value="${grades.name}"></c:out></td>
					<td><c:out value="${grades.type}"></c:out></td>
					<td><fmt:formatNumber value="${grades.score }" maxFractionDigits="1"></fmt:formatNumber></td>
					<td><fmt:formatNumber value="${grades.total }" maxFractionDigits="1"></fmt:formatNumber></td>
					<td><fmt:formatNumber value="${grades.getPercent()}" maxFractionDigits="1"></fmt:formatNumber>%</td> 
					<td><a href="/delete?id=${grades.id}" class="button">Delete</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<center><p>Total percent: <fmt:formatNumber value="${scorePercent}" maxFractionDigits="1"></fmt:formatNumber> %</p></center>
	</c:if>
<c:if test="${empty grades}">
		<center><p>There are no grades to show.</p></center>
	</c:if>
	
	<div class="button"><center><a href="/add">Add a Grade</a></center></div>
</body>
</html>