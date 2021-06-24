<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>기본 유효성 검사 연습</title>
<script type="text/javascript">
   function checkLogin() {
	   if( !(document.loginForm.id.value.length >= 5 && document.loginForm.id.value.length <= 10) ){
		   alert("아이디를 5~10사이 입력하세요");
		   form.id.focus();
		   return false;
	   }else if( !(document.loginForm.pw.value.length >= 8 && document.loginForm.pw.value.length <= 15) ){
		   alert("비밀번호를 8~15사이 입력하세요");
		   form.id.focus();
		   return false;
	   }else if( !(document.loginForm.subject.value.length >= 2 && document.loginForm.subject.value.length <= 25) ){
		   alert("제목을 2~25사이 입력하세요");
		   form.id.focus();
		   return false;
	   }   
	   document.loginForm.submit();
}
</script>
</head>
<body>
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>
			아이디 : <input type="text" name="id">
		<p>
			비밀번호 : <input type="password" name="pw">
		<p> 
		        제목 : <input type="text" name="subject">	 
			 <input type="button" value="send" onclick="checkLogin()">
		
	</form>
</body>
</html>