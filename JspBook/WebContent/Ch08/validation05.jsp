<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�⺻ ��ȿ�� �˻� ����</title>
<script type="text/javascript">
   function checkLogin() {
	   if( !(document.loginForm.id.value.length >= 5 && document.loginForm.id.value.length <= 10) ){
		   alert("���̵� 5~10���� �Է��ϼ���");
		   form.id.focus();
		   return false;
	   }else if( !(document.loginForm.pw.value.length >= 8 && document.loginForm.pw.value.length <= 15) ){
		   alert("��й�ȣ�� 8~15���� �Է��ϼ���");
		   form.id.focus();
		   return false;
	   }else if( !(document.loginForm.subject.value.length >= 2 && document.loginForm.subject.value.length <= 25) ){
		   alert("������ 2~25���� �Է��ϼ���");
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