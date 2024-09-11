<%@page import="model1.board.BoardDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"  %>

<%
//값을 얻기
String title = request.getParameter("title");
String content = request.getParameter("content");

//dto객체생성 값넣기
BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setId(session.getAttribute("UserId").toString());

//dao객체를 이용해서 저장하기
BoardDAO dao = new BoardDAO(application);
int iResult = dao.insertBoard(dto);
dao.close();

//성공 실패
if(iResult == 1){
	//성곻하면 목록으로 이동
	
}
%>
