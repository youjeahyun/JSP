<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
  function checkKey() {
	  if(! (event.keyCode >= 12592 && event.keyCode <= 12687 ) ){
		  alert("한글만 입력가능합니다");
	  }
}
</script>
</head>
<body>

   <form name="loginForm" action="validation06_process.jsp" method="post">
    <p> 아이디 : <input type="text" name="id" onkeypress="checkKey()" >
    <p> 비밀번호 : <input type="password" name="pw">
   <p> <input type="button" value="전송" >
  </form>

</body>
</html>