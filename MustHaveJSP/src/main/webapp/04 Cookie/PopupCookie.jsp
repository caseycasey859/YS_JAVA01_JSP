<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%
	String chkVal = request.getParameter("inactiveToday");
	if(chkVal != null && chkVal.equals("1")) {
		Cookie cookie = new Cookie("PopupClose", "off");
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(60*60*24); //하루동안
		response.addCookie(cookie);
		out.println("쿠키: 하루동안 열리지 않음");
	}
%>    
    