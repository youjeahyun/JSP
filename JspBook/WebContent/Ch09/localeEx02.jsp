<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
<head>
  <title>Locale클래스를 이용한 다국어 처리 예제2-언어설정, 날짜시간 설정하기 ,통화기호 설정하기  : setter로 </title>
</head>
</head>
<body>
  <%
  	Locale locale = request.getLocale();
    NumberFormat currency = NumberFormat.getCurrencyInstance(locale);
    NumberFormat percentage = NumberFormat.getPercentInstance(locale);
    String fcurryency = currency.format(1234567);
    String fpercentage = percentage.format(0.25);
  %>
  <p> 로케일의 통화 형식 : <%= fcurryency %>
  <p> 로케일의 비율 형식 : <%= fpercentage %>

  
</body>
</html>