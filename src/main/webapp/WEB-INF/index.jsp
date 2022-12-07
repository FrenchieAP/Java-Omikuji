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
		<h1 style="text-align:center;">Send an Omikuji</h1>
		<form action="/omikuji" method="post" style="color: white; background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%); display: flex; flex-direction: column; justify-content: space-evenly; border:2px solid grey; border-radius: 25px; height: 600px; margin-left: 350px; padding: 25px 25px 25px 25px; width: 400px">
					<div style="display: flex">
					<label for="quantity" style="margin-top: 5px; color: white">Choose a numbah:</label>
					<input type="number" id="number" name="number" min="5" max="25" class="grey input" value="5" style="border-radius: 5px; padding: 5px; width: 50px; margin-left: 25px">
                    </div>
                    <p>Enter the name of any city</p>
                    <input type="text" name="city" value="city" class="grey input" style="border-radius: 5px; padding: 5px">
                    <p>Enter the name of any person</p>
                    <input type="text" name="person" value="person" class="grey input" style="border-radius: 5px; padding: 5px">
                    <p>Enter professional endeavour or hobby</p>
                    <input type="text" name="item" value="item" class="grey input" style="border-radius: 5px; padding: 5px">
                    <p>Enter any type of living thing</p>
                    <input type="text" name="animal" value="animal" class="grey input" style="border-radius: 5px; padding: 5px">
                    <p>Say something nice</p>
                    <input type="text" name="phrase" value="phrase" class="grey input" style="border-radius: 5px; padding: 5px">
                    <button type="submit" style="background-color: #834EFC; color: white; border-radius: 5px; padding: 5px; width: 150px; margin-left: 100px">SUBMIT</button>
                    
			</form>
                
     </div>
	</body>
</html>
