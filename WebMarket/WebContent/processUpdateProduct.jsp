<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>상품수정하기 - 데이터베이스에 update부분</title>
</head>
<body>
  <%
     String filename="";
     String readFolder="c:\\upload";
     String encType="utf-8";
     int maxSize = 5*1024*1024;
     
     MultipartRequest multi = new MultipartRequest(request,readFolder, maxSize, encType, new DefaultFileRenamePolicy());
     String productId=multi.getParameter("productId");
     String name = multi.getParameter("name");
     String unitPrice = multi.getParameter("unitPrice");
     String description = multi.getParameter("description");
     String manufacturer = multi.getParameter("manufactucer");
     String category = multi.getParameter("category");
     String unitsInStock = multi.getParameter("unitsInStock");
     String condition = multi.getParameter("condition");
     
     Integer price;
     if(unitPrice.isEmpty()) price=0;
     else price=Integer.parseInt(unitPrice);
     
     Integer stock;
     if(unitsInStock.isEmpty()) stock=0;
     else stock = Integer.parseInt(unitsInStock);
     
     Enumeration files = multi.getFileNames();
     String fname = (String) files.nextElement();
     String fileName = multi.getFilesystemName(fname);
     
     PreparedStatement pstmt = null;
     ResultSet rs = null;
     
     String sql="select * from product where p_id = ?";
     pstmt = conn.prepareStatement(sql);
     pstmt.setString(1, productId);
     rs = pstmt.executeQuery();
     
     if(rs.next()){
    	 if(fileName != null) {
    		 sql = "UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?," + 
    			    "p_category=?, p_unitsInStock=?, p_condition=?, p_filename=? where p_id=?";
    		 pstmt = conn.prepareStatement(sql);
    		 pstmt.setString(1, name);
    		 pstmt.setInt(2, price);
    		 pstmt.setString(3, description);
    		 pstmt.setString(4, manufacturer);
    		 pstmt.setString(5, category);
    		 pstmt.setInt(6, stock);
    		 pstmt.setString(7, condition);
    		 pstmt.setString(8, fileName);
    		 pstmt.setString(9, productId);
    		 pstmt.executeUpdate();
    	 }else{
    		 sql = "UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?," + 
     			    "p_category=?, p_unitsInStock=?, p_condition=? where p_id=?";
     		 pstmt = conn.prepareStatement(sql);
     		 pstmt.setString(1, name);
     		 pstmt.setInt(2, price);
     		 pstmt.setString(3, description);
     		 pstmt.setString(4, manufacturer);
     		 pstmt.setString(5, category);
     		 pstmt.setInt(6, stock);
     		 pstmt.setString(7, condition);
     		 pstmt.setString(8, productId);
     		 pstmt.executeUpdate();
    	 }
     }
     if(rs!=null) rs.close();
     if(pstmt!=null) pstmt.close();
     if(conn != null) conn.close();
     
     response.sendRedirect("editProduct.jsp?edit=update");
 %>
</body>
</html>
