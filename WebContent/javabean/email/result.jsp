<%@page import="first.javabean.mail.Email"%>
<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<%
			String mailAdd = request.getParameter("mailAdd");
			Email email = new Email(mailAdd);
			if (email.isEamil()) {
				out.println(mailAdd + "是一个标准的邮箱地址");
			} else {
				out.println(mailAdd + "不是一个标准的邮箱地址");
			}
		%>
		<a href="index.jsp">返回</a>
	</div>
</body>
</html>