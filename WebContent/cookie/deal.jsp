<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>写入cookie</title>
</head>
<body>
	<%
		request.setCharacterEncoding("GB18030");
		String user = URLEncoder.encode(request.getParameter("user"), "UTF-16");
		Cookie cookie = new Cookie("mm", user + "#" + new java.util.Date().toLocaleString());
		cookie.setMaxAge(20);
		response.addCookie(cookie);
	%>
	<script type="text/javascript">
		window.location.href = "index.jsp"
	</script>
</body>
</html>