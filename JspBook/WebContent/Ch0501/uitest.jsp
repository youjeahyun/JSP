<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>입력 폼 만들기 </title>
</head>
<body>
 <form action="uitest_process.jsp" method="post" scope="page" >
  <fieldset>
     <legend> 회원가입 </legend>
       <ul>
         <li>  <label for="id"> 아이디 </label>
               <input type="text" name="id" id="id" required autofocus placeholder="아이디에 대한 조건"> * 
         </li>
         <li>  <label for="pw"> 비밀번호 </label>
               <input type="password" name="password" id="pw" required placeholder="비밀힌트를 주는 부분" > * 
         </li>
         <li> <label for="important"> 점수범위 </label>
              <input type="range" name="im" id="important" min="0" max="100" value="50"> * 최소값 0점 최대값 100점
         </li>
         <li> <label for="mail"> 이메일 </label>
              <input type="email" name="email" id="mail" required> * 
         </li>
         <li>
             <label for="site"> 웹 주소</label>
             <input type="url" name="website" id="site"> 
         </li>
         <li> 
             <label for="date"> 예상시간</label>
             <input type="number" name="hours" id="date" min="50" max="10000">
         </li>
         <li>
            <lable for="start_date"> 시작 날짜 </lable>
            <input type="date" name="sDate" id="start_date">
         </li>              
       </ul>
       
   </fieldset>
      <input type="submit" value="send" >
      
   
  </form>
</body>
</html>