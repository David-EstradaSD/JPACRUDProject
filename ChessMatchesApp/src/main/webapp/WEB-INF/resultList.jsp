<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Famous Chess Matches</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/CSS/index.css" />">
</head>
<body>

	<h1>Famous Chess Matches</h1>

	<c:choose>
		<c:when test="${! empty matches }">
			<table>
				<tr>
					<th>ID</th>
					<th>White Player</th>
					<th>Black Player</th>
					<th>Match Winner</th>
	   			    <th>Opening Played</th>
	   			    <th>Match Result</th>
	   			    <th>Match Date</th>
				</tr>
				<c:forEach var="m" items="${matches}">
					<tr>
						<td>${m.id}</td>
						<td>${m.whitePieces}</td>
						<td>${m.blackPieces}</td>
						<td>${m.winner}</td>
						<td>${m.opening}</td>
						<td>${m.result}</td>
						<td>${m.date}</td>
					</tr>
				</c:forEach>
			</table>
			<!--    <h2>No matches found</h2> -->
		</c:when>
		<c:otherwise>
			<%--    <c:if test="${not empty matches}">
 --%>
			<h2>No matches found</h2>

			<%--  <table>
	<c:forEach var="m" items="${matches}">
	  <tr>
	    <th>ID</th><th>White Player</th><th>Black Player</th><th>Match Date</th>
	    <tr>
	      <td>${m.id}</td>
	      <td>${m.whitePieces}</td>
	      <td>${m.blackPieces}</td>
	      <td>${m.date}</td>
	      </tr>
	   </c:forEach>
	</table> --%>
			<%--   </c:if>
 --%>
		</c:otherwise>
	</c:choose>
	<form action="home.do">
		<button class="btn btn-primary">Home</button>
	</form>

</body>
</html>