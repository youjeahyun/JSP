<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Select 태그 연습</title>
</head>
<body>
	<form action="process01.jsp" method="post">
		<fieldset>
			<legend> 회원가입하기 </legend>
			<p>
				<label for="id"> 아이디 </label> <input type="text" id="id" name="id">
				<input type="button" value="아이디 중복 검사" id="id">
			<p>
				<label> 비밀번호 <input type="password" name="password" id="pw">
				</label>
			<p>
				<label> 이름 <input type="text" name="name" id="irum">
				</label>
			<p>
				<label> 연락처  : 
				    <select name="phone1" size="5"   multiple >
				        <option value="010"> 010 </option>
				        <option value="011"> 011 </option>
				        <option value="016" selected> 016 </option>
				        <option value="017"> 017 </option>
				        <option value="019" disabled> 019 </option> 
				    </select>
				    - <input type="text" name="phone2" maxlength="4" size="4">
				    - <input type="text" name="phone3" maxlength="4" size="4">
				</label>
			<p>
				성별				
				<select name="gender">
				   <optgroup label="성별"> 
				       <option value="male"> 남자 </option>
				       <option value="female"> 여자 </option>  
				   </optgroup>
				</select>

			<p>
				<label> 취미 : 독서 <input type="checkbox" name="hobby" value="독서">
					                  운동 <input type="checkbox"	name="hobby" value="운동">
					                  영화 <input type="checkbox" name="hobby" value="영화">
				</label>
			<p> <textarea name="comment" cols="30" rows="5" placeholder="가입 인사를 해 주세요." >
			    </textarea>	
			<p>
				<input type="submit" value="가입하기"> <input type="reset"
					value="다시 쓰기">
		</fieldset>
	</form>
</body>
</html>