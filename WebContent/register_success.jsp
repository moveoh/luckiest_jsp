<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/quit_member.js" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 성공!</h1>
<%
String member_email = (String)session.getAttribute("member_email");
%>
	<h3>탈퇴하기</h3>
	<form method="post" action="MemberQuit">
		<label>id 값</label> 
		<input type="text" name="id" value="<%=member_email %>"> <br />
		<input type="submit" value="탈퇴하기">
	</form>
</body>
</html>