<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�⺻ ��ȿ�� �˻� ����</title>
<script type="text/javascript">
   function checkLogin() {
	   if(document.loginForm.id.value == ""){
		   alert("���̵� �Է��ϼ���");
		   form.id.focus();
		   return false;
	   }else if(document.loginForm.pw.value == ""){
		   alert("��й�ȣ�� �Է��ϼ���");
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
			���̵� : <input type="text" name="id">
		<p>
			��й�ȣ : <input type="password" name="pw">
		<p> 
		        ���� : <input type="text" name="subject">	 
			 <input type="button" value="send" onclick="checkLogin()">
		
	</form>
</body>
</html>