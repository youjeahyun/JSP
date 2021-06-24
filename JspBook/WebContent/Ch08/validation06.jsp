<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>데이터 유효성검사-숫자만, 영문자만, 한글만, 특수문자만</title>
<script type="text/javascript">
  function checklogin(){
	  var form=document.loginForm;
	  for( i=0; i<form.id.value.length ; i++){
		  var ch=form.id.value.charAt(i);
		  if( !( ch.keyCode >= 48 && ch.keyCode <=57 ) ){
			  alert("숫자만 입력가능합니다.")
		  }
		  
	  }
	  form.submit();
  }

</script>

</head>
<body>
  <form name="loginForm" action="validation06_process.jsp" method="post">
    <p> 아이디 : <input type="text" name="id" >
    <p> 비밀번호 : <input type="password" name="pw">
   <p> <input type="button" value="전송" onclick="checklogin()">
  </form>
</body>
</html>