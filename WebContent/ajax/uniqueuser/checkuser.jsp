<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
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
		String[] users = { "关关", "哈哈", "GG", "MM" };
		String user = new String(request.getParameter("user").getBytes("ISO-8859-1"), "UTF-8");
		Arrays.sort(users);
		int result = Arrays.binarySearch(users, user);
		if (result > -1) {
			out.print("抱歉，该用户名已经被注册");
		} else {
			out.print("恭喜你，该用户名没有被注册");
		}
	%>
</body>
</html>