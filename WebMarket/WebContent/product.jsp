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

		<!-- �������� �ּ�ȭ�� �ֽ� CSS -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

		<!-- �ΰ����� �׸� -->

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap-theme.min.css">

		<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">��ǰ ����</h1>
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
		<img alt="�̹���" src="./resources/images/<%=p.getFilename()%>" width="400" height="400">
	</div>
		<div class="col-md-6">
			<h3><%=p.getName() %></h3>
			<p><%=p.getDes() %></p>
			<p><b>��ǰ �ڵ� : </b><span class="badge badge-success"><%=p.getId() %></span></p>
			<p><b>������ :</b><%=p.getManu() %></p>
			<p><b>�з� :</b><%=p.getCate() %></p>
			<p><b>������� : </b><%= p.getExpDate().substring(0, 4) %>�� <%=p.getExpDate().substring(6, 8) %>�� <%=p.getExpDate().substring(8) %>�� </p>
			<p><b>��� �� :</b><%=p.getStock() %></p>
			<h4><%=p.getPrice() %>��</h4>
			<p><a href="#" class="btn btn-info">��ǰ �ֹ� &raquo;</a></p>
			<a href ="./products.jsp" class="btn btn-secondary">��ǰ ��� &raquo;</a>
		</div>
	</div>
</div>




<hr>
<jsp:include page="footer.jsp" />



</body>
</html>