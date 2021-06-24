<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
<script type="text/javascript">
   function checkForm(){
	   if( !document.newMemeber.id.vlaue ){
		   alert("아이디를 입력하세요.");
		   return false;
	   }
	   if( !document.newMemeber.password.vlaue ){
		   alert("비밀번호를 입력하세요.");
		   return false;
	   }
	   if( document.newMemeber.password.vlaue != document.newMemeber.password_confirm.vlaue ){
		   alert("비밀번호를 동일하게 입력해 주세요");
		   return false;
	   }
   }
</script>
<title>addMember.jsp 회원가입하기 폼</title>
</head>
<body>
  <jsp:include page="/menu.jsp" />
  <div class="jumbotron">
    <div class="container">
      <h1 class="display-3"> 회원 가입 </h1>
    </div>
  </div>
  <div class="container">
     <form name="newMember" class="form-horizontal" action="processAddMember.jsp"
            method="post"  onsubmit = "return checkForm()">
       
         <div class="form-group row">
            <label class="col-sm-2">  아이디    </label>
            <div class="col-sm-3"> 
               <input type="text" name="id" class="form-control" placeholder="id" >
            </div>
         </div>   
         
          <div class="form-group row">
            <label class="col-sm-2">  비밀번호    </label>
            <div class="col-sm-3"> 
               <input type="password" name="password" class="form-control" placeholder="password" >
            </div>
         </div> 
         
         
          <div class="form-group row">
            <label class="col-sm-2">  비밀번호확인    </label>
            <div class="col-sm-3"> 
               <input type="password" name="password_confirm" class="form-control" placeholder="password confirm" >
            </div>
         </div> 
         
         
          <div class="form-group row">
            <label class="col-sm-2">  성명    </label>
            <div class="col-sm-3"> 
               <input type="text" name="name" class="form-control" placeholder="name" >
            </div>
         </div> 
         
         <div class="form-group row">
            <label class="col-sm-2">  성별    </label>
            <div class="col-sm-10"> 
               <input type="radio" name="gender" value="남" /> 남
               <input type="radio" name="gender" value="여" /> 여
            </div>
         </div> 
         
          <div class="form-group row">
            <label class="col-sm-2">  생일    </label>
            <div class="col-sm-4"> 
               <input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6" >
               <select name="birthmm">
                  <option value=""> 월 </option>
                  <option value="01"> 1 </option>
                  <option value="02"> 2 </option>
                  <option value="03"> 3 </option>
                  <option value="04"> 4 </option>
                  <option value="05"> 5 </option>
                  <option value="06"> 6 </option>
                  <option value="07"> 7 </option>
                  <option value="08"> 8 </option>
                  <option value="09"> 9 </option>
                  <option value="10"> 10 </option>
                  <option value="11"> 11 </option>
                  <option value="12"> 12 </option>
               </select>
               <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
            </div>
         </div> 
         
          <div class="form-group row">
            <label class="col-sm-2">  이메일    </label>
            <div class="col-sm-10"> 
               <input type="text" name="mail1" maxlength="50">@
               <select name="mail2">
                  <option value="naver.com"> naver.com </option>
       			  <option value="gmail.com"> gmail.com </option>
       			  <option value="daum.net"> daum.net </option>
               </select>
            </div>
          </div>
          
           <div class="form-group row">
            <label class="col-sm-2">  전화번호    </label>
            <div class="col-sm-3"> 
               <input type="text" name="phone" class="form-control" placeholder="phone" >
            </div>
         </div> 
          
          <div class="form-group row">
            <label class="col-sm-2">  주소    </label>
            <div class="col-sm-5"> 
               <input type="text" name="address" class="form-control" placeholder="address" >
            </div>
         </div>      
             
          <div class="form-group row">
             <div class="col-sm-offset-2 col-sm-10"> 
               <input type="submit" class="btn btn-primary" value="등록" >
               <input type="reset" class="btn btn-primary" value="취소" onclick="reset()" >
            </div>
         </div>       
               
     </form>       
  </div>
</body>
</html>