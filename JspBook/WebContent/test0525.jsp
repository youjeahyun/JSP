<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<title>회원가입</title>
	<style>
 
	 input, textarea, select, FORM
	 {
	 
	  border-radius:5px;
	  
	 }
	 h1{
		 text-align: center;
	 }


	</style>
</head>
<body style="background-color:gray">
<center>
	<h1> 회원가입</h1>
	 <table boder = "" style="background-color: lawngreen;  border-spacing:10px;">
	  
	 <FORM>
	
   		<td text-align="center">아이디 </td>
  	 		<td>
   				<input type = "text">
  				<input type = "button" value = "중복확인"/>
 	   	 	</td>
     	    
			<tr>
  		   
			<td> 비밀번호 </td>
			<td> <input type = "password"> </td>
  			
			<tr>

		    <td> 비밀번호 확인 </td>
  			<td> <input type = "password">&nbsp;*비밀번호를 다시입력하세요. </td>
 			
			<tr>

			<td>성명</td>
			<td> <input type = "text"> </td>
			
			<tr>
			
  			<td> 성별 </td>
   			<td>
 			   <input type = "radio" name = "gender" checked> 남자
  			   <input type = "radio" name = "gender"> 여자
  			</td>
  			
		    <tr>
  			
			<td> 이메일 </td>
  			<td>
    			<input type = "text"/> @ <input type = "text"/> &nbsp;
    			<select>
 				    <option> 직접입력 </option>
			    </select>
		    </td>
 			
			<tr>

		    <td> 주소 </td>
   			<td>
    			<input type = "text"/>
   			    <input type = "button" value = "주소찾기"/>
     	    </td>
  
  			<tr>
  			<td> 상세주소 </td>
  			<td>
   			    <input type = "text"/>
   			</td>
 			
			<tr>
  
	 		<td> 휴대폰 </td>
  			<td>
				<input type = "radio" name = "phone"> SKT
				<input type = "radio" name = "phone"> KTF
				<input type = "radio" name = "phone"> LGU+
  				<br>
    		
				<select>
					<option> 010 </option>
				</select>
   			
  			</td>
 			
			<tr>

			<td>관심</td>
			<td>
				<input type = "checkbox"> 수입차
				<input type = "checkbox"> 국산차
				<input type = "checkbox"> SUV
				<input type = "checkbox"> 경차
				<input type = "checkbox"> LPG
			</td>
			
  			<tr>
		
			<td> 자기소개  </td>
			<td>
				<textarea cols = "50" rows = "5"></textarea>
			</td>
		
		</FORM>
	</table>
	<input type = "submit" value = "가입하기"/>
	<input type = "reset" value = "다시 입력"/>
</center>
</body>
</html>