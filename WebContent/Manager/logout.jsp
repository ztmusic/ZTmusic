<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.cookie"%>

<%
	String data = cookie.readCookie(request, "name");
	if (data.equals("")) {
		response.sendRedirect("index.jsp");
	} else {
		cookie.writeCookie(response, "name", "");
		response.sendRedirect("index.jsp");
	}
%>