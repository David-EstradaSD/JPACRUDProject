<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href= "<c:url value="/CSS/index.css" />">

<title>Famous Chess Matches</title>
</head>
<body>
  
  <h3>Chess Match Results:</h3>
   <c:if test="${empty match }">No match found. 
     <a href="home.do">Go back</a></c:if>
   <c:if test="${ not empty match}">
   
	<table>
	  <tr>
	    <th>ID</th><th>White Player</th><th>Black Player</th><th>Match Winner</th>
	    <th>Opening Played</th><th>Match Result</th><th>Match Date</th>
	    </tr>
	    <tr>
	      <td>${match.id}</td>
	      <td>${match.whitePieces}</td>
	      <td>${match.blackPieces}</td>
	      <td>${match.winner}</td>
	      <td>${match.opening}</td>
	      <td>${match.result}</td>
	      <td>${match.date}</td>
	      </tr>
	</table>
	
  </c:if>
  <form action="home.do">
  <button class="btn btn-primary">Home</button>
  </form>
  
<h3>Edit the Chess Match:</h3>
<form action ="updateMatch.do"method="POST" >

  <input type="hidden" name = "id" value="${match.id}">
  
  <label for="blackPieces">Enter Black Pieces Player:</label>
  <input id="blackPieces" type="text" class="form-control" name="blackPieces" value="${match.blackPieces}">
  
  <label for="whitePieces">Enter White Pieces Player:</label>
  <input id="whitePieces" type="text" class ="form-control" name="whitePieces"  value="${match.whitePieces}">
  
  <label for="winner">Enter Winner:</label>
  <input id="winnner" type="text" class ="form-control" name="winner"  value="${match.winner}">
  
  <label for="opening">Enter Opening Strategy:</label>
  <input id="opening" type="text" class ="form-control" name="opening"  value="${match.opening}">
  
  <label for="result">Enter Match Result:</label>
  <input  id="result" type="text" class ="form-control" name="result" value="${match.result}">
  
  <label for="date">Enter Match Date:</label>
  <input  id="date" type="date" class ="form-control" name="date" value="${match.date}">


<button type="submit" class="btn btn-primary">Submit</button><br/>
</form>

<h3>Delete the Chess Match from Database:</h3>
<form action="deleteMatch.do" method="POST">

<input type="hidden" name = "id" value="${match.id}">
<button type="submit" id="yesDeleteBtn" class="btn btn-primary">Delete</button><br/>

</form>

</body>
</html>