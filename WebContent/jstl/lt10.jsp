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
	<c:forEach var="i" begin="1" end="10" step="2">
		${i }&nbsp;&nbsp;
</c:forEach>
	<br>
	<c:set var="sourceStr"
		value="test1:test2:test3、test4、test5;test6;test7:test8、test9;test10"></c:set>
	<c:forTokens items="${sourceStr}" delims=": 、 ;" var="item">
		${item }<br>
	</c:forTokens>
</body>
</html>