<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>자바빈즈받기</h2>
<jsp:useBean id="person" class="common.Person" scope="request"/>
<p>이름: <%= request.getParameter("param1") %></p>
<p>주소: <%= request.getParameter("param2") %></p>
<p>특징: <%= request.getParameter("param3") %></p>

<h2>피라미터받기</h2>
<p>이름:<%= request.getParameter("param1") %></p>
<p>주소:<%= request.getParameter("param2") %></p>
<p>특징:<%= request.getParameter("param3") %></p>

<jsp:include page="inc/ParamInclude.jsp">
   <jsp:param name="loc1" value="노인과 바다"/>
   <jsp:param name="loc2" value="헤밍웨이"/>
</jsp:include>
</body>
</html>