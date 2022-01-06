<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao" %>

<%
	//dao올리기
	GuestBookDao guestbookDao = new GuestBookDao();
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>guestbookDeleteForm</title>
</head>

<body>
	<form action="./delete.jsp" method="get">
		비밀번호 <input type="text" name="password" value="">
		<button type="submit">확인</button>
		<br>	
		<input type="text" name="no" value="<%= guestbookDao.guestNoPassword().getNo()%>">
	</form>
	
	<a href="./addList.jsp">메인으로 돌아가기</a>
</body>

</html>