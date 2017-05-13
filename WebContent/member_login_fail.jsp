<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<script src="dist/sweetalert.min.js"></script> 
		<link rel="stylesheet" type="text/css" href="dist/sweetalert.css">
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Login FAIL!!</title>
</head>
<body>
	<script>
	function move(){
		 location.href="member_login.jsp";
	}
	swal("이런,!", "아이디 또는 비밀번호가 잘못됬습니다", "error")
	setTimeout("move()",2000);
	</script>
</body>
</html>