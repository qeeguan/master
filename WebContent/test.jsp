<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>Insert title here</title>
</head>
<body>
	<%
	//禁用缓存
	response.setHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 0);
	
	//自动刷新
	response.setHeader("refresh", "10");	//网页每隔10秒刷新一次
	%>
</body>
</html>