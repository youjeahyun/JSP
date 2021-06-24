<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 가입 처리</title>
</head>
<body>
   <%  request.setCharacterEncoding("utf-8");
       String id=request.getParameter("id");
       String password = request.getParameter("password");
       String name=request.getParameter("name");
       String phone1=request.getParameter("phone1");
       String phone2=request.getParameter("phone2");
       String phone3=request.getParameter("phone3");
       String gender=request.getParameter("gender");
       String[] hobby = request.getParameterValues("hobby");
       
       String comment=request.getParameter("comment");
   %>
   <p> 아이디 : <%=id %> <br>
    비밀번호 : <%=password %> <br>
    이름 : <%=name %> <br>
    전화번호 : <%=phone1 %> - <%=phone2 %> -<%=phone3 %>
    성별 : <%=gender %> <br>
    취미 : <% 
          if(hobby != null) {
        	  for(int i=0; i< hobby.length; i++ ) {
        		  out.println(" " + hobby[i]);
        	  } 
          }
         %> 
    비고 : <%=comment %> <br>
</body>
</html>




