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
            <legend> �������� </legend>
             <input type="checkbox" name="s1" value="korean"> ���� 
             <input type="checkbox" name="s2" value="english"> ���� 
             <input type="checkbox" name="s3" value="math"> ����
          </fieldset>
          <fieldset> 
            <legend> ��米�� ���� </legend>
              <input type="radio" name="r1" value="t1"> ȫ�浿 
              <input type="radio" name="r1" value="t2"> ȫ���
              <input type="radio" name="r1" value="t3"> ȫ����  
          </fieldset>
         <br> <input type="submit" value="���ÿϷ�" >
    
    </form>
</body>
</html>