<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>计算结果</title>
</head>
<body>
	<jsp:useBean id="calBean" class="first.javabean.calculator.CalBean"></jsp:useBean>
	<jsp:setProperty property="*" name="calBean" />
	<%
		calBean.Cal();
	%>
	<form action="cal.jsp" method="post">
		<input type="text" name="firstParam"> <select name="operator">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select> <input type="text" name="secondParam">= <input type="text"
			value="" disabled="disabled"><br> <input type="submit"
			value="计 算">
	</form>
	<br> 计算结果为：
	<jsp:getProperty property="firstParam" name="calBean" />
	<jsp:getProperty property="operator" name="calBean" />
	<jsp:getProperty property="secondParam" name="calBean" />
	=
	<jsp:getProperty property="result" name="calBean" />
</body>
</html>