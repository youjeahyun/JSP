<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <form action="out2_procces.jsp" method="post" scope="page">
         <fieldset>
            <legend> 수강과목 </legend>
             <input type="checkbox" name="s1" value="korean"> 국어 
             <input type="checkbox" name="s2" value="english"> 영어 
             <input type="checkbox" name="s3" value="math"> 수학
          </fieldset>
          <fieldset> 
            <legend> 담당교수 지정 </legend>
              <input type="radio" name="r1" value="t1"> 홍길동 
              <input type="radio" name="r1" value="t2"> 홍길순
              <input type="radio" name="r1" value="t3"> 홍길자  
          </fieldset>
         <br> <input type="submit" value="선택완료" >
    
    </form>
</body>
</html>