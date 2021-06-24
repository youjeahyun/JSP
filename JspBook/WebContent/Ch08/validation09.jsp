<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>정규표현식을 사용하여 데이터 유효성 검사하기</title>
<script type="text/javascript">
   function checkMember() {
    
      var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
      var regExpName = /^[가-힣]*$/;
      var regExpPasswd = /^[0-9]*$/;
      var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/; 
      var regExpEmail = /^[0-9a-zA-Z]([-_\.])?[0-9a-zA-Z]*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
      
     var form=document.Member;
     var id=form.id.value;
     var name=form.name.value;
     var passwd=form.passwd.value;
     var phone = form.phone1.value + "-" + form.phone2.value + "-" form.phone3.value;
     var email = form.email.value;
     
     if( !regExpId.test(id) ) {
    	 alert("아이디를 문자로 시작해 주세 요!");
    	 form.id.select();
    	 return;
     }
     
     if( !regExpPasswd.test(passwd) ) {
    	 alert("비밀번호를 숫자로만 입력해 주세요!");
    	 form.passwd.select();
    	 return;
     }
     
     if( !regExpName.test(name) ) {
    	 alert("이름은  한글만 입력해 주세요!");
    	 form.name.select();
    	 return;
     }
     
     if( !regExpPhone.test(phone) ) {
    	 alert("전화번호 첫 칸은 숫자 3자, 두번째 칸은 숫자 3~4자, 세번째 칸은 숫자 4자로 입력해 주세요!");
    	 form.phone1.select();
    	 return;
     }
     
     if( !regExpEmail.test(email) ) {
    	 alert("이메일 입력 형식으로 입력해 주세요!(예) hee0075@hanamil.net");
    	 form.email.select();
    	 return;
     }
     form.submit();
   
}
</script>
</head>
<body>
 <h3> 회원가입 </h3>
  <form name="Member" action="v1_process.jsp" method="post" >
    <p> 아이디 <input type="text" name="id">
    <p> 비밀번호 <input type="password" name="passwd">
    <p> 이름 <input type="text" name="name">
    <p> 연락처 <select name="phone1">
                 <option value="010"> 010 </option>
                 <option value="011"> 011 </option>
                 <option value="016"> 016 </option>
                 <option value="017"> 017 </option>
                 <option value="019"> 019 </option>
              </select> - <input type="text" maxlength="4" size="4" name="phone2"> -
              <input type="text" maxlength="4"  size="4" name="phone3">
     <p> 이메일 <input type="email" name="email">
     <p>
   <input type="button" value="send" onclick="checkMember()">
  </form>
</body>
</html>