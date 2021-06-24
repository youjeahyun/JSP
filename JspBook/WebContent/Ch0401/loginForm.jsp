<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <h3> 이곳은 loginForm.jsp 파일입니다</h3>
    <jsp:include page="serverForm.jsp">
       <jsp:param name="address" value='<%=java.net.URLEncoder.encode("서울시 강동구") %>'/>
       <jsp:param name="school" value='<%=java.net.URLEncoder.encode("단국대") %>'/>
       <jsp:param name="data" value='<%=java.net.URLEncoder.encode("정현희") %>' />
    </jsp:include>
  
</body>
</html>