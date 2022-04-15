<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
// 		int num = (int)request.getAttribute("num");
// 		String str = (String)request.getAttribute("str");
	%>
	num : <%=request.getAttribute("num") %> <br>
	str : <%=request.getAttribute("str") %> <br>
	
</body>
</html>