<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="dto.Product"%>
<%@page errorPage="exceptionNoProductId.jsp" %>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>

<title> 상세 상품목록 </title>
<script type="text/javascript">
  function addToCart(){
	  if(confirm("상품을 장바구니에 추가하시겠습니까?")){
		  document.addForm.submit();
	  }else{
		  document.addForm.reset();
	  }
  }
</script>

</head>
<body>
  <jsp:include page="menu.jsp" />
  <div class="jumbotron">
     <div class="container">
         <h1 class="display-3"> 상품 정보 </h1>
      </div>
   </div>
   <%
      String id = request.getParameter("id");//아이폰이면 P1234 LG이면 P1235 삼성탭을 눌렀다면 P1236
      ProductRepository dao = ProductRepository.getInstance();
      Product product = dao.getProductById(id);//찾는 제품의 Product클래스의 주소가 리턴된다. 
    %>
   <div class="container">
     <div class="row">
        <div class="col-md-5">
           <img src="./resources/images/<%=product.getFilename()%>" style="width :100%">
         
        </div>
     
        <div class="col-md-6">
            <h3><%=product.getPname() %> </h3>
            <p><%=product.getDescription() %>
            <p> <b> 상품코드 : </b> <span  class="badge badge-danger"> <%=product.getProductId() %> </span>
            <p> <b> 제조사 </b> : <%=product.getManufacturer() %> 
            <p> <b> 분류 </b> : <%=product.getCatagory()%>
            <p> <b> 재고수 </b> : <%=product.getUnitsInStock() %>
            <h4> <%= product.getUnitPrice() %>원</h4>
            <p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
                 <a href="#" class="btn btn-info"  onclick="addToCart()"> 상품 주문 &raquo; </a>
                 <a href="./cart.jsp" class="btn btn-warning"> 장바구니&raquo; </a>
                 <a href="./products.jsp" class="btn btn-secondary"> 상품목록 &raquo; </a> 
              </form>  
         </div>
      </div>
   </div>    
   <jsp:include page="footer.jsp" />  
</body>
</html>












