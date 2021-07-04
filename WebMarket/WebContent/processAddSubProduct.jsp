<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@page import="dto.Product" %>
<%@page import="dto.ProductRepository" %>
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%@page import="java.util.*" %>


<%
String filename="";
//웹애플리케이션의 절대 경로
String realfolder="C:\\upload";
//최대 업로드될 파일의 크기(5mb)
int max=5*1024*1024;

//인코딩 유형
String encType="utf-8";

MultipartRequest multi=new MultipartRequest(request,realfolder,max,encType,new DefaultFileRenamePolicy());



String pid=multi.getParameter("id");
String pname=multi.getParameter("name");

String pprice=multi.getParameter("price");
String pdes=multi.getParameter("des");
String pmanu=multi.getParameter("manu");
String pcate=multi.getParameter("cate");
String pdate1=multi.getParameter("expdate1");
String pdate2=multi.getParameter("expdate2");
String pdate3=multi.getParameter("expdate3");
String pstock=multi.getParameter("stock");
String pcondition=multi.getParameter("condition");

//가격 int로 변환하기
Integer price;

if(pprice.isEmpty()) 
	price=0;
else
	price=Integer.valueOf(pprice);

//재고 long으로 변환하기
long stock;
if(pstock.isEmpty())
	stock=0;
else
	stock=Long.valueOf(pstock);




Enumeration files=multi.getFileNames();
String fname=(String) files.nextElement();
String fileName=multi.getFilesystemName(fname);

ProductRepository pr=ProductRepository.getInstance();

Product newproduct=new Product();
newproduct.setId(pid);
newproduct.setName(pname);
newproduct.setPrice(price);
newproduct.setCate(pcate);
newproduct.setDes(pdes);
newproduct.setCondition(pcondition);
newproduct.setManu(pmanu);
newproduct.setStock(stock);
//추가
newproduct.setFilename(fileName);

pr.addProduct(newproduct);


response.sendRedirect("products.jsp");




%>
