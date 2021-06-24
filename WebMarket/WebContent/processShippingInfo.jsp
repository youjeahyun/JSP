<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>배송정보처리 페이지</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");
    
    Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
    Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
    Cookie shippingDate = new Cookie("Shipping_Date", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8"));
    Cookie country = new Cookie("Shipping_country", URLEncoder.encode(request.getParameter("country"), "utf-8"));
    Cookie zipCode = new Cookie("Shipping_zipCode", URLEncoder.encode(request.getParameter("zipCode"), "utf-8"));
    Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "utf-8"));
    
    cartId.setMaxAge(24*60*60);
    name.setMaxAge(24*60*60);
    zipCode.setMaxAge(24*60*60);
    country.setMaxAge(24*60*60);
    addressName.setMaxAge(24*60*60);
    shippingDate.setMaxAge(24*60*60);
    
    
    response.addCookie(cartId);
    response.addCookie(name);
    response.addCookie(zipCode);
    response.addCookie(country);
    response.addCookie(addressName);
    response.addCookie(shippingDate);
    
    response.sendRedirect("orderConfirmation.jsp");
  %>
</body>
</html>