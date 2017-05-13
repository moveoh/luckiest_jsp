<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="menu.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴보기!!!</title>
</head>
<body>
	<center>
		<% ArrayList<MenuDTO> dtoList = (ArrayList<MenuDTO>)request.getAttribute("menuDTO"); %>

		<% if(dtoList != null){%>
		<%  for(int i=0; i < dtoList.size(); i++){
         int menu_id = dtoList.get(i).getMenu_id();
         int restaurant_id = dtoList.get(i).getRestaurant_id();
         String menu_name = dtoList.get(i).getMenu_name();
         int menu_price = dtoList.get(i).getMenu_price();
         double menu_ave_star = dtoList.get(i).getMenu_ave_star();
       %>
		<ul>
			<li><a href="comment.jsp"><h2><%= menu_name %></h2></a></li>
			<li><%= menu_price %></li>
			<li><%= menu_ave_star %></li>
			<li><a href="MenuList?=<%=restaurant_id=i%>"></a></li>
		</ul>
		
		<% } }%>
		<a href="MenuList?restaurant_id=1">
   <h2>메뉴 보기</h2>
   </a>
	</center>
</body>
</html>