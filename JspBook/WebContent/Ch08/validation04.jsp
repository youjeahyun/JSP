<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
  function  checkform() {
	  if( !(document.frm.name.value.length >= 6 && document.frm.name.value.length <= 12) ) {
		  alert("�̸��� ���̴� 6��~12�� �̳��Դϴ�.");
		  document.frm.name.select();
	  }
}

</script>
</head>
<body>
   <form name="frm" action="#" method="post">
      <p> �̸� : <input type="text" name="name">
      <p> <input type="submit" value="send" onclick="checkform()">  
   </form>
</body>
</html>