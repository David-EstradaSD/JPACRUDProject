<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Famous Chess Matches</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href= "<c:url value="/CSS/index.css" />">

</head>
<body>

  <h1><em>Famous Chess Matches</em></h1>
  <h4>Search our Chess Match Website!</h4>
  <label for="listAllMatches"> <b>List All Matches</b> </label>
   <form action="listAllMatches.do">
  <button class="btn btn-primary">List</button>
  </form>
  
  <form action="findMatchById.do" method="GET">
  <label for="searchById"> <b>Enter Match ID:</b> </label>
  <input id="searchById" type="text" class="form-control" name="id" value="" placeholder="1, 2, 3, etc.">
  <button type="submit" class="btn btn-primary btnIdSearch">Submit</button><br/>
  </form>
  
  <!--TODO: FIX THIS METHOD!!!  -->
<!--   <form action="findMatchByPlayer.do" method="GET">
  <label for="player"> <b>Enter Player Name:</b> </label>
  <input id="player" type="text" class="form-control" name="whitePieces" value="" placeholder="Magnus Carlsen">
  <button type="submit" class="btn btn-primary btnPlayerSearch">Submit</button><br/>
  </form>
  <br/> -->
  
  <form action="newMatch.do" method="POST">
        <h4>Add Chess Match to Database</h4>
       
  <label for="blackPieces">Enter Black Pieces Player:</label>
  <input id="blackPieces" type="text" class="form-control" name="blackPieces" placeholder="Magnus Carlsen">
  
  <label for="whitePieces">Enter White Pieces Player:</label>
  <input id="whitePieces" type="text" class ="form-control" name="whitePieces" placeholder="Hikaru Nakamura">
  
  <label for="winner">Enter Winner:</label>
  <input id="winner" type="text" class ="form-control" name="winner" placeholder="White, Black, Draw">
  
  <label for="opening">Enter Opening Strategy:</label>
  <input id="opening" type="text" class ="form-control" name="opening" placeholder="Sicilian Defense, Classic, Queen's Indian, etc.">
  
  <label for="result">Enter Match Result:</label>
  <input  id="result" type="text" class ="form-control" name="result" placeholder="Checkmate, Resignation, Timeout, Draw">
  
  <label for="date">Enter Match Date:</label>
  <input  id="date" type="date" class ="form-control" name="date">
    
        <button type="submit" class="btn btn-primary">Submit</button>
         </form>
  

</body>
</html>