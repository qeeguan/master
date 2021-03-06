<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>Insert title here</title>
</head>
<body>
	<c:set var="hour">
		<%=new java.util.Date().getHours()%>
	</c:set>
	<c:set var="min">
		<%=new java.util.Date().getMinutes()%>
	</c:set>
	<c:set var="sec">
		<%=new java.util.Date().getSeconds()%>
	</c:set>
	<c:choose>
		<c:when test="${hour>1 && hour <=6 }">早上好！</c:when>
		<c:when test="${hour>6 && hour <=11 }">上午好！</c:when>
		<c:when test="${hour>11 && hour <=17 }">下午好！</c:when>
		<c:when test="${hour>17 && hour <=24 }">晚上好！</c:when>
	</c:choose>
	现在的时间是:${hour }:${min }:${sec }
</body>
</html>