<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.OracleConn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>도서상세보기</h2>
<%
	String num_param = request.getParameter("num");
	OracleConn jdbc = new OracleConn();
	String sql = "SELECT num, title, content, writer, pub_year FROM book ";
	sql += " WHERE num = " + num_param;
	Statement stmt = jdbc.con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	if(rs != null){
		rs.next();
		int num = rs.getInt("num");
		String title = rs.getString("title");
		String content = rs.getString("content");
		String writer = rs.getString("writer");
		int pub_year = rs.getInt("pub_year");				
%>
제목 : <%=title %> <br/>
내용 : <%=content %> <br/>
저자 : <%=writer %> <br/>
출판년도: <%=pub_year %> <br/>
<% 		
	}
%>
</body>
</html>