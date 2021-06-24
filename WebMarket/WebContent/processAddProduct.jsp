<%@page language="java" contentType="text/html; charset=utf-8" %>
<%@page import="dto.Product"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%@page import="java.util.*" %>
<%@page import="dao.ProductRepository"%>
<%@page import="java.sql.*" %>
<%@ include file = "dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>파일명은 processAddProduct.jsp </title>
</head>
<body>
  <% 
    request.setCharacterEncoding("utf-8");
  
    String filename="";
  	String readFolder = "c:\\upload"; //웹 애플리케이션의 절대 경로 - 서버쪽 부분의 폴더명 
 	int maxSize=5*1024*1024;//최대로 업로드될 파일 크기 5MB
 	String enctype="utf-8";
  
  	MultipartRequest multi = 
  		   new MultipartRequest(request, readFolder, maxSize, enctype, new DefaultFileRenamePolicy());
  
    String productId=multi.getParameter("productId");
    String name=multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String manufacturer = multi.getParameter("manufacturer");
    String category = multi.getParameter("category");
    String unitsInStock = multi.getParameter("unitsInStock");
    String condition = multi.getParameter("condition");
  
    Integer price;
    
    if (unitPrice.isEmpty()) price = 0;
    else price = Integer.parseInt(unitPrice);
    
    int stock;
    if(unitsInStock.isEmpty()) stock=0;
    else stock = Integer.parseInt(unitsInStock);
    
  //폼페이지에서 전송된 요청 파라미터 중 파일을 받도록 MultipartRequest객체 타입의 getFileNames()메소드를 작성합니다.
    Enumeration files = multi.getFileNames();
  //폼페이지에서 전송된 요청 파라미터 중 파일을 받도록 Enumeration객체 타입의 nextElement()메소드를 작성합니다.
    String fname = (String) files.nextElement();
  //폼페이지에서 전송되어 서버에 업로드된 파일을 가져오도록 MultipartRequest객체 타입의 getFilesystemName()메소드를 작성합니다.
    String fileName = multi.getFilesystemName(fname);
    
    PreparedStatement pstmt = null;
    
    String sql="insert into product values(?,?,?,?,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, productId);
    pstmt.setString(2, name);
    pstmt.setInt(3, price);
    pstmt.setString(4, description);
    pstmt.setString(5, category);
    pstmt.setString(6, manufacturer);
    pstmt.setInt(7, stock);
    pstmt.setString(8, condition);
    pstmt.setString(9, fileName);
    pstmt.executeUpdate();
    
    if(pstmt != null) pstmt.close();
    if(conn != null) conn.close();
    
    response.sendRedirect("products.jsp");
  
   %>
</body>
</html>
