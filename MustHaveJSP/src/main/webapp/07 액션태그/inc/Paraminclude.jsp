<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>지시어로 포함하기</h2>
  <%@ include file="./inc/OuterPage1.jsp" %>
  <p>고구려 세운동명왕: <%=newVar1 %></p>
  
  <h2>액션태그로 포함하기</h2>
  <jsp:include page="./inc/OustePage2.jsp"/>
  <jsp:include page="<%=outerPath2 %>"/>
 <%--  <p>백제 온조황 : <%=newVar1 %></p> --%>
</body>
</html>