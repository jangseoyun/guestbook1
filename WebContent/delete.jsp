<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.GuestBookDao" %>

<%
	//sql로 보내서 일렬번호가 일치하는지 확인
	
	//dao올리기
	GuestBookDao guestbookDao = new GuestBookDao();

	//파라미터 불러오기 //string->int
	String password = request.getParameter("password");
	int no = Integer.parseInt(request.getParameter("no"));
	
	//삭제
	guestbookDao.guestbookDelete(no,password);
	
	//리다이렉션
	response.sendRedirect("./addList.jsp");
%>