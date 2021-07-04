<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%@page import="dto.Product" %>
<%@page import="dto.ProductRepository" %>
<jsp:useBean id="product" class="dto.ProductRepository" scope="session"></jsp:useBean>
<title>Baking Shopping Mall</title>
<!-- jquery -->

		<script src="//code.jquery.com/jquery.min.js"></script>

        <!-- BootStrap -->

		<!-- 합쳐지고 최소화된 최신 CSS -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

		<!-- 부가적인 테마 -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap-theme.min.css">

		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품 정보</h1>
	</div>
</div>
<% 
	String id= request.getParameter("id");
	ProductRepository pr=ProductRepository.getInstance();
	Product p =product.getProductById(id);
%>


<div class="container">
	<div class ="row">
	<div class="col-md-5">
		<img alt="이미지" src="./resources/images/<%=p.getFilename()%>" width="400" height="400">
	</div>
		<div class="col-md-6">
			<h3><%=p.getName() %></h3>
			<p><%=p.getDes() %></p>
			<p><b>상품 코드 : </b><span class="badge badge-success"><%=p.getId() %></span></p>
			<p><b>제조사 :</b><%=p.getManu() %></p>
			<p><b>분류 :</b><%=p.getCate() %></p>
			<p><b>유통기한 : </b><%= p.getExpDate().substring(0, 4) %>년 <%=p.getExpDate().substring(6, 8) %>월 <%=p.getExpDate().substring(8) %>일 </p>
			<p><b>재고 수 :</b><%=p.getStock() %></p>
			<h4><%=p.getPrice() %>원</h4>
			<p><a href="#" class="btn btn-info">상품 주문 &raquo;</a></p>
			<a href ="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
		</div>
	</div>
</div>




<hr>
<jsp:include page="footer.jsp" />



</body>
</html>