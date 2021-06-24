<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>상품수정</title>
</head>
<body>
  <jsp:include page="menu.jsp" />
  <div class="jumbotron">
    <div class="container">
      <h1 class="display-3">상품 수정</h1>
    </div>
  </div>
  <%@ include file="dbconn.jsp" %>
  <%
     String productId = request.getParameter("id");
      
     PreparedStatement pstmt = null;
     ResultSet rs = null;
     
     String sql = "select * from product where p_id = ?";
     pstmt = conn.prepareStatement(sql);
     pstmt.setString(1, productId );
     rs = pstmt.executeQuery();
     if(rs.next()) {
   %>
     <div class="container">
       <div class="row">
          <div class="col-md-5">
            <img src = "c:/upload/<%=rs.getString("p_filename")%>"  alt="image" style="width:100%" />
          </div>
          <div class="col-md-7">
            <form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post"
                  enctype="multipart/form-data">
               
               <div class="form-group row">
                  <label class="col-sm-3"> 상품 코드 </label>
                  <div class="col-sm-3">
                      <input type="text" id="productId" name="productId" class="form-control"
                             value='<%=rs.getString("p_id")%>' >
                  </div>
               </div>
                   
               <div class="form-group row">
                  <label class="col-sm-3"> 상품명 </label>
                  <div class="col-sm-3">
                      <input type="text" id="name" name="name" class="form-control"
                             value='<%=rs.getString("p_name")%>' >
                  </div>
               </div>
               
               <div class="form-group row">
                  <label class="col-sm-3"> 가격 </label>
                  <div class="col-sm-3">
                      <input type="text" id="unitPrice" name="unitPrice" class="form-control"
                             value='<%=rs.getString("p_unitPrice")%>' >
                  </div>
               </div>
               
               <div class="form-group row">
                  <label class="col-sm-3"> 상세 설명 </label>
                  <div class="col-sm-3">
                      <input type="text" id="description" name="description" class="form-control"
                             value='<%=rs.getString("p_description")%>' >
                  </div>
               </div>
               
               <div class="form-group row">
                  <label class="col-sm-3"> 제조사  </label>
                  <div class="col-sm-3">
                      <input type="text" name="manufactucer" class="form-control"
                             value='<%=rs.getString("p_manufacturer")%>' >
                  </div>
               </div>
               
                <div class="form-group row">
                  <label class="col-sm-3"> 분류  </label>
                  <div class="col-sm-3">
                      <input type="text" id="category" name="category" class="form-control"
                             value='<%=rs.getString("p_category")%>' >
                  </div>
               </div>
               
               <div class="form-group row">
                  <label class="col-sm-3"> 재고 수  </label>
                  <div class="col-sm-3">
                      <input type="text" id="unitsInStock" name="unitsInStock" class="form-control"
                             value='<%=rs.getString("p_unitsinstock")%>' >
                  </div>
               </div>
                
                <div class="form-group row">
                  <label class="col-sm-2"> 상태  </label>
                  <div class="col-sm-5">
                      <input type="radio" id="condition" name="condition" class="form-control"
                             value="New" > 신규제품 
                      <input type="radio" id="condition" name="condition" class="form-control"
                             value="Old" > 중고제품
                      <input type="radio" id="condition" name="condition" class="form-control"
                             value="Refurbished" > 재생 제품                
                  </div>
               </div>
               
              <div class="form-group row">
                  <label class="col-sm-2"> 이미지  </label>
                  <div class="col-sm-5">
                      <input type="file" name="productImage" class="form-control">
                  </div>
              </div>
              
              <div class="form-group row">     
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" class="btn btn-primary" value="등록">
                </div>
             </div>    
                 
            </form>
          </div>
        </div>
     </div>
  <% } 
     if(rs != null) rs.close();
     if(pstmt != null ) pstmt.close();
     if(conn != null ) conn.close();
  
  %>
 
</body>
</html>