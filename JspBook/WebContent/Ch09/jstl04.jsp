<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >
<html>
<head>
<title>JSTL-formatNumber</title>
</head>
<body>
 <p> 숫자 : <fmt:formatNumber value="3200100"/>
 <p> <fmt:formatNumber value="3200100" type="number" />
 <!-- ,없이 숫자 표현 --> 
 <p> <fmt:formatNumber value="3200100" type="number" 
                       groupingUsed="false" /> 
 <!-- 설정된 숫자를 통화형식으로 표현하고 천단위 구분기호 표현 -->                    
 <p> <fmt:formatNumber value="3200100" type="currency"
                       groupingUsed="true" />
  <!-- 설정된 숫자를 통화형식으로 표현하고 통화기호는 &으로 표현 -->                    
 <p> <fmt:formatNumber value="3200100" type="currency"
                       currencySymbol="&" />
 <!-- 설정된 숫자를 퍼센트형식으로 표현 -->                    
 <p> <fmt:formatNumber value="3200100" type="percent" />
 <!-- 설정된 숫자를 최대 열자리, 소수점 둘째 자리까지 표현 -->                    
 <p> <fmt:formatNumber value="3200100.254" minIntegerDigits="10"
                       maxFractionDigits="2" />
  <!-- 설정된 숫자를 .000형식으로 표현 -->                    
 <p> <fmt:formatNumber value="3200100.45" pattern=".000" />
   <!-- 설정된 숫자를 #,#00.0#형식으로 표현 -->                    
 <p> <fmt:formatNumber value="3200100.456" pattern="#,#00.0#" />                                              
                                                                                
 
</body>
</html>