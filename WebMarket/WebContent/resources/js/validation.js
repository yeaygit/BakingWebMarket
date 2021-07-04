
function CheckAddProduct(){
	var id=document.getElementById("id");
	var name=document.getElementById("name");
	var price=document.getElementById("price");
	var stock=document.getElementById("stock");
	
	
	//상품아이디 체크
	if(!check(/^[a-zA-Z0-9]{4,11}$/,id,"[상품코드]\n영문자와 숫자를 조합하여 5~12자까지 입력하세요\n")) return false;
	
	//상품명 체크
	if(name.value.length<4||name.value.length>12){
		alert("[상품명]\n 최소 4자에서 최대 12자까지 입력하세요.");
		name.select();
		name.focus();
		return false;
	}
	
	//상품가격 체크
	if(price.value.length==0||isNaN(price.value)){
		alert("[가격]\n숫자만 입력하세요");
		price.select();
		price.focus();
		return false;
	}
	
	if(price<0){
		alert("[가격] \n 음수는 입력할 수 없습니다.");
		price.select();
		price.focus();
		return false;
	}
	
	
	//재고수 체크
	if(isNaN(stock.value)){
		alert("[재고 수]\n 숫자만 입력하세요.");
		stock.select();
		stock.focus();
		return false;
	}
	
	
	function check(reqExp, e,msg){
		if(reqExp.test(e.value)){
		return true;
		}
		
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	document.newProduct.submit()
}