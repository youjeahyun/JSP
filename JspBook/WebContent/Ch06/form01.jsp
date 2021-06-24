<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Form processing</title>
</head>
<body>
   <h3> 회원 가입 </h3>
   <form action="process01.jsp" name="member" method="post">
      <p><label for="id">  아이디  </label>  <input type="text" id="id" name="id">
         <input type="button" value="아이디 중복 검사" id="id" > 
      <p> <label> 비밀번호 <input type="password" name="password" id="pw">   </label>
      <p> <label> 이름 <input type="text" name="name" id="irum"> </label>
      <p> <label> 연락처 <input type="text" name="phone1" id="tel" maxlength="4" > - 
                       <input type="text" name="phone2" id="tel" maxlength="4" > -
                       <input type="text" name="phone3" id="tel" maxlength="4" >   </label>
      <p> <label> 성별 <input type="radio" name="gender" value="남성" checked>  남성
                     <input type="radio" name="gender" value="여성" > 여성 </label>
      <p> <label> 취미 : 독서 <input type="checkbox" name="hobby1" value="readingBook">
                   	      운동 <input type="checkbox" name="hobby2" value="sports">
                   	      영화 <input type="checkbox" name="hobby3" value="movie">   </label>   
       <p> <input type="submit" value="가입하기">  
           <input type="reset" value="다시 쓰기">
           	                  
   </form>
</body>
</html>