<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@page import="java.util.Locale" %>
<!DOCTYPE html>
<html>
<head>

<title>Locale클래스를 이용한 다국어 처리 예제1-웹브라우저에 있는 다국어를 감지함</title>
</head>
<body>
  <%
     Locale locale = request.getLocale();//로케일 클래스를 인스턴스화 함
     String displayLanguage = locale.getDisplayLanguage();// 현재 로케일의 언어이름을 브라우저에서  가져옴
     String language = locale.getLanguage();//현재 언어 코드를 가져옵니다.
     String disaplaycountry = locale.getDisplayCountry();//국가이름 
     String country = locale.getCountry();//국가 지역 코드 
  %>
  <p> 로케일언어: <%= displayLanguage %>
  <p> 로케일 언어코드 : <%=language %>
  <p> 로케일 국가 : <%=disaplaycountry %>
  <p> 로케일 국가 코드 :  <%=country %>
</body>
</html>