<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>response내장객체로 페이지 이동하기</title>
</head>
<body>
   <form action="process01.jsp" method="post" scope="page">
      <fieldset>
         <legend> 로그인 </legend>
         <p> <label> 아이디 <input type="text" name="id"> </label>
             <label> 비밀번호 <input type="password" name="passwd"> </label>
             <input type="submit" value="로그인"> 
      </fieldset>       
   </form>
</body>
</html>