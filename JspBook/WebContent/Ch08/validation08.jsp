<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>정규표현식을 사용하여 데이터 유효성 검사하기</title>
<script type="text/javascript">
   function checkForm() {
	//var regExp=/Java/i;
	var  regExp = new  RegExp('java','i');  
	var str=document.frm.title.value;
	var re = regExp.test(str);
	var result = regExp.exec(str);
	alert(result[0] + re);
	
	
}
</script>
</head>
<body>
  <form name="frm">
    <p> 제목 <input type="text" name="title">
    <input type="submit" value="send" onclick="checkForm()">
  </form>
</body>
</html>