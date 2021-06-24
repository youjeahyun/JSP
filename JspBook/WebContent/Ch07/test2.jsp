<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <form name="form1" action="a_response.jsp" method="post" >
      <p> 이름 <input type="text" name="irum">
      <p> 아이디 <input type="text" name="id">
      <p> 비밀번호 <input type="password" name="pw">
      <p> 합격여부 <input type="radio" name="passResult" value="합격"> 합격
                <input type="radio" name="passResult" value="불합격"> 불합격 
      <p> 수강과목 <input type="checkbox" name="subject1" value="국어" > 국어
                <input type="checkbox" name="subject2" value="영어" > 영어
                <input type="checkbox" name="subject3" value="수학" > 수학
   </form>
</body>
</html>