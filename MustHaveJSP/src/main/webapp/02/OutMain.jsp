<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- buffer="1kb" autoFlush="false" -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - out</title>
</head>
<body>
  <% 
  out.print("출력되지 않는 텍스트");
  out.clearBuffer();
  out.print("한");
  out.print("출력되는 텍스트");
  out.print("출력버퍼:"+ out.getBufferSize+"<br>");
  out.print("남은버퍼:"+ out.getRemaining()+"<br>");
  out.flush();
  out.print("남은버퍼:"+ out.getRemaining()+"<br>");
  
  out.print(123);
  out.print(false);
  out.print('공');
  out.print("고양이");
  %>
</body>
</html>