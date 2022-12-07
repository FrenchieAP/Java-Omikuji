<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</head>
	<body>
	<div class="container">
		<h1 style="text-align:center;">Here's Your Omikuji</h1>
		<div style="color: white; background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%); display: flex; flex-direction: column; justify-content: space-evenly; border:2px solid grey; border-radius: 25px; height: 600px; margin-left: 350px; padding: 25px 25px 25px 25px; width: 400px">
		<h2>In <c:out value="${sessionNumber}" /> years, you will live in <c:out value="${sessionCity}" /> with <c:out value="${sessionPerson}" />, selling <c:out value="${sessionItem}" /> for a living. The next time you see
		a <c:out value="${sessionAnimal}" />, you will have good luck. Also, <c:out value="${sessionPhrase}" />.</h2>
		</div>
     </div>
	</body>
</html>
