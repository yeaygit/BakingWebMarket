<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="style.css" rel="stylesheet" type="text/css">
<title>Baking Shopping Mall</title>

</head>
<body>
<nav class="navaber">
<div class="container">
	<div class="navbar-header">
		<a class="navbar-brand" href="./welcome.jsp">Home</a>
	</div>
</div>


</nav>
	<%
	String getting="Welcome to Baking Shopping Mall";
	String tagline="Welcome to Baking Market!";
	%>
	<div id ="include">
		<div id="title">
		<h1><%=getting %></h1>
	</div>
	</div>
	
	<div id="include">
		<div id="context">
		<h3><%=tagline %></h3>
	</div>
	</div>
	
	
	<footer class="container">
	<p>&copy;BakingWebMarket</p>
	</footer>
	
</body>
</html>