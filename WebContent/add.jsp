<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestbookVo"%>
<%@page import="java.util.List" %>

<%
	//dao 메모리에 올리기
	GuestBookDao guestbookDao = new GuestBookDao();

	//파라미터 가져오기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	//파라미터 vo 객체로 만들기
	GuestbookVo guestbookVo = new GuestbookVo(name,password,content);
	
	//저장
	guestbookDao.guestbookInsert(guestbookVo);
	
	//리스트 가져오기
	List<GuestbookVo> gusetbookList = guestbookDao.getList();

	//리다이렉션
	response.sendRedirect("./addList.jsp");
	
%>