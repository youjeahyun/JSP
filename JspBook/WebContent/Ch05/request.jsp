<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>request ���� ��ü ��� : ��û �Ķ���� �� ����ϱ� </title>
<style>
   form fieldset{
     margin: 10px 0px;
   }
   form legend {
      font-size:18px;
      color:#0066ff;
      font-weight:600;
   }
   form label.reg {
      font-size:14px;
      width:120px;
      float:left;
   }
   form label em {
     font-size:15px;
     color:red;
     font-weight: 800;
   }
   form ul li {
      list-style : none;
      margin : 10px 0px;
   }
   form .easys {
     text-align: left;
     font-size:12px;
     color:blue;
   }
   form fieldset.sendform {
       text-align : center; 
   }
</style>
</head>
<body>
   <form action="process.jsp" method="get">
      <fieldset class="login">
         <legend> �α��� </legend>
        <label for="user_id"> ���̵� </label>
        <input type="text" id="user_id" name="user_id"  size="10" autofocus> 
        <label for="user_pw"> ��й�ȣ </label>
        <input type="password" id="user_pw"  name="user_pw">
      </fieldset>
      <fieldset class="register">
         <legend> �����ϱ� </legend>
         <ul>
           <li> <label class="reg" for="new_id"> ���̵� <em> * </em> </label> 
                <input type="text" name="new_id" id="new_id" size="20" autocomplete="on" required>
           </li>
           <li> <label class="reg" for="new_pw1"> ��й�ȣ  <em> * </em> </label>
                <input type="password" name="new_pw1" id="new_pw1" size="20" required> 
           </li>
           <li> <label class="reg" for="new_pw2"> ��й�ȣȮ��  <em> * </em> </label>
                <input type="password" name="new_pw2" id="new_pw2" size="20" required> 
           </li>      
           <li> <label class="reg" for="user_name"> �̸�  <em> * </em> </label>
                <input type="text" name="user_name"  id="user_name" size="20" required> 
           </li>
           <li> <label class="reg" for="user_mail"> �����ּ�   <em> * </em> </label>
                <input type="email" name="user_mail" id="user_mail" size="20" required> 
           </li>
           <li> <label class="reg" for="user_tel"> ��ȭ��ȣ </label>
                <input type="tel" name="user_tel" id="user_tel" size="20"> 
           </li>
         </ul>
      </fieldset>
      <fieldset class="easys">
         <legend> �ڹ� ��/�� ������ </legend>
         <textarea  name="intro" cols="60" rows="5">
                     ������ ��� ������� ���� ����ִ� �� - ������ǻ���п�
                     �츮�� å�� �������� �ٽ� �ѹ� Ǯ�� ���ϴ�.   
         </textarea>
      </fieldset>
      <fieldset class="sendform">
          <input type="submit" value="�����ϱ�">
          <input type="reset" value="�ٽþ���"> 
      </fieldset>
   </form>
</body>
</html>