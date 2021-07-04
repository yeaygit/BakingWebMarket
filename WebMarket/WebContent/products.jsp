<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList" %>
<%@page import="dto.Product" %>
<%@page import="dto.ProductRepository" %>
<jsp:useBean id="product" class="dto.ProductRepository" scope="session"/>
<html>
<head>
<meta charset="EUC-KR">
<title>Baking Shopping mall</title>
<!-- jquery -->

		<script src="//code.jquery.com/jquery.min.js"></script>

        <!-- BootStrap -->

		<!-- 합쳐지고 최소화된 최신 CSS -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

		<!-- 부가적인 테마 -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap-theme.min.css">

		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-4">상품 목록</h1>
	</div>
</div>
<%
	//ArrayList<Product> productlist = product.getAllProducts();
%>
<%
	ProductRepository pr=ProductRepository.getInstance();
	ArrayList<Product> productlist=pr.getAllProducts();
%>
<div class="container">
	<div class="row" align ="center">
	 <%
	 for(int i=0;i<productlist.size();i++){
		 Product p=productlist.get(i);
	 
	 %>
	 <div class="col-md-4">
	 	<img src="./resources/images/<%=p.getFilename()%>" width="300" height="300">
	 	<br>
	 	<h3><%=p.getName() %></h3>
	 	<p><%=p.getPrice() %>원</p>
	 	<p><%=p.getDes() %></p>
	 	<p><a href ="./product.jsp?id=<%=p.getId() %>" class="btn-btn-secondary" role="button">상세 정보 &raquo;</a></p>
	 </div>
	 
	 <%
	 }
	 %>
	</div>
	<hr>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>