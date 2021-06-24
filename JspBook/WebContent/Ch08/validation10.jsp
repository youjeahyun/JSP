<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>정규표현식을 사용하여 데이터 유효성 검사하기</title>
<script type="text/javascript">
   function checkPasswd() {
      var id=document.getElementById("id").value;
      var passwd=document.getElementById("passwd").value;
      var passwdConfirm=document.getElementById("passwdConfirm").value;
      pw_passed = true;
      
      if( id.length == 0) {
    	  alert("아이디를 입력하세요");
    	  return false;
      }
      if( passwd.length == 0) {
    	  alert("비밀번호를 입력하세요");
    	  return false;
      }
      
      if(passwdConfirm.length == 0) {
    	  alert("비밀번호 확인을 입력하세요");
    	  return false;
      }else {
    	   if(passwd != passwdConfirm) {
    		   alert("비밀번호와 비밀번호 확인 문자가 다릅니다.");
    		   return false;
    	   }
       }
      var SameChar = 0;//동일 문자 카운트  11111  
      var sequenceCount1 = 0;//연속성(+) 카운트   4321  dcba
      var sequenceCount2 = 0 ;//연속성(-) 카운트  1234 abcde
      //ex) 111  9012ab  11111  
      for( var i=0; passwd.length;i++ ){
    	  var char0;
    	  var char1;
    	  var char2;
    	  
    	  if( i >= 2) {
    		  char0 = passwd.charCodeAt(i-2);//9  1  1  1  3
    		  char1 = passwd.charCodeAt(i-1);//0  1  1  2  2
    		  char2 = passwd.charCodeAt(i);//1    1  2  3  1
    		  
    		  //동일 문자 카운터(연속3개) 조건이 참이 되려면 111인 경우 임
    		  if(( char0 == char1 ) && ( char1 == char2 ) ) {
    			  SameChar++;
    		  }else {
    			  SameChar=0;
    		  }
    		  
    		  //연속성 카운터(+) 카운터   321 cba
    		  if(char0 - char1 == 1 && char1 - char2 == 1) {
    			  sequenceCount1++;
    		  }else {
    			  sequenceCount1 = 0;
    		  }
    		  //연속성 카운터(-) 카운터   123 abcd
    		  if( char0 - char1 == -1 && char1-char2 == -1  ) {
    			  sequenceCount2++;
    		  }else {
    			  sequenceCount2=0;
    		  }
     
    	  }//end if
    	  
    	  if(SameChar>0){
    		  alert("동일 문자를 3자 이상 연속 입력(ex:111,bbb)할 수 없습니다.");
    		  pw_passed = false;
    	  }
    	  
    	  if(sequenceCount1 > 0 || sequenceCount2 > 0) {
    		  alert("영문, 숫자는 3자이상 연속 입력(ex:abc, 123) 할 수 없습니다.");
    		  pw_passed = false;
    	  }
    	  
    	  if( !pw_passed ){
    		  return false;
    		  break;
    	  }
      }//end for
      
    document.form.submit();      
   
}//end function


</script>
</head>
<body>
  <form name="frm" action="#" method="post">
    <p> 아이디  <input type="text" name="id" id="id">
    <p> 비밀번호 <input type="text" name="passwd" id="passwd">
    <p> 비밀번호확인 <input type="text" name="passwdConfirm" id="passwdConfirm">
    <input type="submit" value="전송" onclick="checkPasswd()" >
  </form>
</body>
</html>