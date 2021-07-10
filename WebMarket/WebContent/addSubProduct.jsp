<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<title>Baking Shopping Mall</title>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message">
<jsp:include page="menu.jsp"></jsp:include>


<div class="jumbotron">
	<div class="container">
		<h1 class="display-3"><fmt:message key="title"/></h1>
	</div>

</div>

<div class="container">
	<div class="text-right">
		<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
	</div>
	<form name ="newsubproduct" action="./processAddSubProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productId"></fmt:message></label>
			<div class="col-sm-3">
			<input type="text" name="id" id="id" class="form-control">
			</div>
		</div>
		
		
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="pname"></fmt:message></label>
			<div class="col-sm-3">
			<input type="text" name="name" id="name" class="form-control">
			</div>
		</div>
		
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productImage"></fmt:message></label>
			<div class="col-sm-5">
			<input type="file" name="img"  class="form-control">
			</div>
		</div>
		
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitPrice"></fmt:message></label>
			<div class="col-sm-3">
			<input type="text" name="price" id="price" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="description"></fmt:message></label>
			<div class="col-sm-3">
			<textarea name="des" cols="50" rows="2" class="form-control"></textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="manufacturer"></fmt:message> </label>
			<div class="col-sm-3">
			<input type="text" name="manu" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="category"></fmt:message></label>
			<div class="col-sm-3">
			<input type="text" name="cate" class="form-control">
			</div>
		</div>
	
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="expirationDate"></fmt:message></label>
			<div class="col-sm-3">
			<p><select name="expdate1">
			<option value="2021">2021</option>
			<option value="2022">2022</option>
			<option value="2023">2023</option>
			<option value="2024">2024</option>
			</select>년(year)
			<select name="expdate2">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			</select>월(month)
			<select name="expdate3">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>	
			<option value="30">30</option>
			<option value="31">31</option>		
			</select>일(day)
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitsInstock"></fmt:message></label>
			<div class="col-sm-3">
			<input type="text" name="stock" id="stock" class="form-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="condition"></fmt:message></label>
			<div class="col-sm-5">
			<input type="radio" name="condition" value="new"><fmt:message key="condition_New"></fmt:message>
			<input type="radio" name="condition" value="subdivision"><fmt:message key="condition_Divided"></fmt:message>
			</div>
		</div>
		
		
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-primary" value="<fmt:message key="button"></fmt:message>" onclick="CheckAddProduct()">
			</div> 
		</div>
	</form>

</div>






</fmt:bundle>
</body>

</html>