<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가게등록</title>
</head>
<body>
 <form method="post" action="RestaurantInsert">
      <h3>가게등록</h3>
      Name <input type="text" name="restaurant_name"><br/>
      Address <input type="text" name="restaurant_adress"><br/>
      Category1 <input type="text" name="restaurant_category1"><br/>
      Category2 <input type="text" name="restaurant_category2"><br/>
     
      <input type="submit" value="가게등록">
   </form>
</body>
</html>