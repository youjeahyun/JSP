<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html >
<html>
<head>
<title>장바구니에 있는 상품 모두 삭제하기 / 장바구니 비우기 </title>
</head>
<body>
  <%
    String id = request.getParameter("cardId");
    if(id == null || id.trim().equals("")){
    	response.sendRedirect("cart.jsp");
    	return;
    }
    session.invalidate(); 
    response.sendRedirect("cart.jsp");
  %>
</body>
</html>