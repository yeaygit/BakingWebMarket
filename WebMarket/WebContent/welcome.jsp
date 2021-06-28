<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<!-- jquery -->

		<script src="//code.jquery.com/jquery.min.js"></script>

        <!-- BootStrap -->

		<!-- �������� �ּ�ȭ�� �ֽ� CSS -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

		<!-- �ΰ����� �׸� -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap-theme.min.css">

		<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</head>
<body>
<%@page import="java.util.Date" %>
<%@include file="menu.jsp" %>
	<%
	String getting="Baking Shopping Mall";
	String tagline="Welcome to Baking Market!";
	%>
	<div class="bg-secondary">
	
	</div>
	<div class ="jumbotron" align="center">
		<div class ="container">
		<h1 class="display-4"><%=getting %></h1>
		
	</div>
	</div>
	
	<div id="container">
	
		<div class="text-center">
		<h3><%=tagline %></h3>
		<%
			Date day=new java.util.Date();
			String ampm;
			int hour = day.getHours();
			int minute=day.getMinutes();
			int second=day.getSeconds();
			if(hour/12==0){
				ampm="AM";
			}else{
				ampm="PM";
				hour-=12;
			}
			String time=ampm+" "+hour+"�� "+minute+"�� "+ second+"�� ";
		%>
		���� ���� �ð��� <%=time %> �Դϴ�.
	</div>
	<hr>
	</div>
	
	<%@include file="footer.jsp" %>

</body>
</html>