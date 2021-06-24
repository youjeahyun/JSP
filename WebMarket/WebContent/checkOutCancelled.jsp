<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 취소 페이지</title>
</head>
<body>
  <jsp:include page="menu.jsp" />
  <div class="jumbotron">
    <div class="container">
      <h1 class="dispay-3">주문 취소</h1>
    </div>
  </div>
  <div class="container">
    <h2 class="alert alert-danger"> 주문이 취소되었습니다. </h2>
  </div>
  <div class="container">
    <p> <a href="./products.jsp" class="btn btn-secondary"> &laquo; 상품 목록 </a>
  </div>
</body>
</html>