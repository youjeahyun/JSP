<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html >
<html>
<head>
  <title>장바구니에 추가하기 위해 넘겨줄 자료 처리</title>
</head>
<body>
 <%
   String id = request.getParameter("id"); //예: P1234
   if(id == null || id.trim().equals("")) {
	   response.sendRedirect("products.jsp");//id가 없으면 상품목록으로 페이지 이동해라 
	   return;
   }
 
   ProductRepository dao = ProductRepository.getInstance();//전체 상품목록의 객체 주소를 얻어온다
   Product product = dao.getProductById(id);//P1234제품번호가 들어 있는 객체(상품)의 주소를 얻어옴
   if(product == null) {
	   response.sendRedirect("exceptionNoProductId.jsp");
   }
   ArrayList<Product> goodsList = dao.getAllProducts();
   Product goods = new Product();//빈 객체 생성, 구매하려는 정보를 담으려고
   for(int i=0;i<goodsList.size(); i++){
	   goods=goodsList.get(i);
	   if(goods.getProductId().equals(id)){
		   break;
	   }
   }
   
   ArrayList<Product> list =(ArrayList<Product>) session.getAttribute("cartlist");//"cartlist"로 설정된 섹션명으로 섹션값을 가지고 옴
   //아래의 if가 참인 경우는 session없는 경우 
   if(list == null){
	  list = new ArrayList<Product>();
	  session.setAttribute("cartlist", list);//섹션을 생성한다.
   }
   
   int cnt=0;//장바구니에 담긴 상품의 갯수
   Product goodsQnt = new Product();
   for(int i=0;i<list.size(); i++) {
	   goodsQnt = list.get(i);
	   if(goodsQnt.getProductId().equals(id)){
		   cnt++;
		   int orderQuantity = goodsQnt.getQuantity() + 1;//장바구니에 담은 갯수 + 1  ,  각 상품에 대한 구매갯수
		   goodsQnt.setQuantity(orderQuantity);//장바구니에 담은 갯수
		   
	   }
   }
   //예) 아이폰 1개만 산다고 가정 한 경우
   if (cnt == 0) {
	   goods.setQuantity(1);
	   list.add(goods);
   }
   response.sendRedirect("product.jsp?id=" + id);//장바구니에 담아 놓은 상품의 상세정보로 이동시킴
 %>

</body>
</html>