<%@page import="www.jcc.com.control.BoardControl"%>
<%@page import="www.jcc.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int id = Integer.parseInt(request.getParameter("id"));
	
	BoardControl control = new BoardControl();
	int result = control.deleteBoard(id);
	
%>