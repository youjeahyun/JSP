/**
 * 상품 등록시 데이터 유효성 검사 
 */

function CheckAddProduct(){  
	var productId = document.getElementById("productId");//productId
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock"); //unitsInStock
	
	//상품 아이디 체크
	if( !check(/^P[0-9]{4,11}$/, productId, "[상품코드]\nP와 숫자를 조합하여 5-12자까지 입력하세요.\n첫 글자는 반드시 P로 시작하세요.")) 
	    return false;		
	
	//상품명 체크 - 최소 4자~12자 사이 입력하기 
	if( name.value.length < 4 || name.value.length > 12) {
		alert("[상품명]\n 최소 4자에서 최대 12자까지 입력하시오");
		name.select();
		name.forcus();
		return false;
	}
	
	//상품 가격 체크-입력체크, 숫자체크
	if( unitPrice.value.length == 0 || isNaN(unitPrice.value ) ){
		alert("[상품가격]\n 숫자만 입력하세요.");
		unitPrice.select();
		unitPrice.forcus();
		return false;
	}
	
	//상품가격이 음수이면 체크
	if(unitPrice.value < 0) {
		alert("[상품가격]\n 음수는 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.forcus();
     	return false;
	}	else if ( !check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice , "[가격]\n 소수점 둘째자리까지만 입력합니다.")) return false; 
	
	//재고수 체크
	if( isNaN(unitsInStock.value)){ 
		alert("[재고 수]\n 숫자만 입력합니다.");
		unitsInStock.select();//unitsInStock
		unitsInStock.forcus();
     	return false;
	}

	function check( regExp,  e, msg ){
		if( regExp.test(e.value) ) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	document.newProduct.submit();
	
}
