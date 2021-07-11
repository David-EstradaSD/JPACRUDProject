<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<!-- BootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <link rel="stylesheet" href= "<c:url value="/CSS/index.css" />">
   <!-- Google Fonts -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Playfair+Display:wght@400;900&display=swap" rel="stylesheet">
   <!-- CSS -->
</head>
<body>
     
        <c:if test="${not empty match }">
        <h1 class="successTitle">Success</h1>
        <p>The Chess Match with ID ${match.id} has been successfully updated in the database.</p>
         </c:if>
         
         <c:if test="${empty match }">
        <h1 class="successTitle">Failure</h1>
         <p>The Chess Match was NOT successfully updated in the database. Please try again.</p>
          </c:if>
         <a href="home.do" class="btn btn-primary">Return</a>

</body>
</html>