<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
JDBConnect jdbc = new JDBConnect();

//회원추가
String id = "hgd";
String pass = "1111";
String name = "홍길동";

//;
String sql = "INSERT INTO member (id,pass,name,regidate) VALUES (?,?,?, sysdate)";
PreparedStatement psmt = jdbc.con.prepareStatement(sql);
psmt.setString(1,id);
psmt.setString(2,pass);
psmt.setString(3,name);

int inResult = psmt.executeUpdate();
out.println(inResult+"행이 입력되었습니다.");

jdbc.close();
%>

</body>
</html>