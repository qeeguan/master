<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>Insert title here</title>
</head>
<body>
	name：<%=new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8")%> 
	sex:
	<%=request.getParameter("sex")%>
</body>
</html>