<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>
<%@ page import="java.util.List"%>

<%
	//다오 메모리에 올리기
	GuestBookDao guestbookDao = new GuestBookDao();
	
	//guestbookList 가져오기
	List<GuestbookVo> guestbookList = guestbookDao.getList();

	//테스트
	//System.out.println(guestbookList.toString());
%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>addList</title>
</head>

<body>
	<!-- 등록 폼 영역 -->
	<form action = "./add.jsp" method="get">
		<table border="1" width="500px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			<tr>
			<tr>
				<td colspan="4"><textarea cols="65" rows="5" name = "content" ></textarea></td>
			</tr>
			<tr>
				<td colspan="4">
					<button type="submit" >글작성</button>
				</td>
			</tr>
		</table>
	</form>
	<!-- 등록 폼 영역 -->
	<br>
	<!-- 리스트 폼 영역 -->
	<%
	for(int i =0; i<guestbookList.size(); i++){
	%>
		<table border="1" width = "500px">
			<tr>
				<td><%= guestbookList.get(i).getNo() %></td>
				<td><%= guestbookList.get(i).getName() %></td>
				<td><%= guestbookList.get(i).getRegDate() %></td>
				<td><a href = "./deleteForm.jsp?no=<%= guestbookList.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4">
					<%= guestbookList.get(i).getContent() %>
				</td>
			</tr>
		</table>
		<br>
	<%
	}
	%>

</body>

</html>