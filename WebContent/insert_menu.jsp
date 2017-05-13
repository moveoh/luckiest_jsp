<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴등록</title>
</head>
<body>
<form method="post" action="MenuRegister">
      <h3>메뉴등록</h3>
      Restaurant_ID <input type="text" name="restaurant_id"><br/>
      Name <input type="text" name="menu_name"><br/>
      Price <input type="text" name="menu_price"><br/>
      Ave_star <input type="text" name="menu_ave_star"><br/>
      summary <input type="text" name="menu_summary"><br/>
      <input type="submit" value="메뉴등록">
   </form>

</body>
</html>