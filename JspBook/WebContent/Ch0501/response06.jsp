<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>response내장객체로 오류 응답코드와 오류 메시지 보내기</title>
</head>
<body>
   <% 
      response.setCharacterEncoding("utf-8");
      response.setContentType("text/html; charset=utf-8");
      response.sendError(500, "서버 트래픽이 많습니다. 잠시후 다시 연결하세요");
   %>
   <p> 문자 인코딩 : <%= response.getCharacterEncoding() %>
   <p> 콘텐츠 유형 : <%= response.getContentType() %>
</body>
</html>