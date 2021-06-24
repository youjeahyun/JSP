<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>데이터 유효성검사-숫자인지 판단</title>
<script type="text/javascript">
   function checkForm(){
	   if( !isNaN(document.frm.name.value.substr(0,1)) ){
		   alert("첫글자가 숫자이면 안됩니다.");
		   document.frm.name.select();
	   }
   }
</script>
</head>
<body>
 <form name="frm">
   <p> 이름 : <input type="text" name="name" id="name">
   <input type="submit" value="send" onclick="checkForm()">
 </form>
</body>
</html>