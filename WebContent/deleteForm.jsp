<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>guestbookDeleteForm</title>
</head>

<body>
 	<%-- 비밀번호 혹은 개인정보를 전송하는 경우 보안을 위해서 post방식 사용(주소에 노출할 것인가의 여부에 따라서) --%>
	
	<form action="./delete.jsp" method="get">
		비밀번호 <input type="text" name="password" value="">
		<button type="submit">확인</button> <br>	
		<input type="text" name="no" value="<%= no %>">
	</form>
	
	<a href="./addList.jsp">메인으로 돌아가기</a> <br>
	
</body>

</html>