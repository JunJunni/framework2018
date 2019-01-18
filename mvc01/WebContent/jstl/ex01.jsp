<%@page import="com.bit.model.JavaBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl 문법</h1>
	<%
		String msg = "Hello jstl";
		pageContext.setAttribute("msg", msg);
		
		JavaBean bean = new JavaBean();
		pageContext.setAttribute("bean", bean);
	%>
	<div>
		<c:out value="${null }">헐 그냥 이렇게 태그쓰면 되는구나
		value에 아무값도 안넣을료고 el표현식을 사용! </c:out>
	</div>
	
	<c:set var = "msg2" value = "변수" scope = "request"></c:set>
	<div>${pageScopte.msg2 }</div>
	
	<c:set target="${bean }" property = "num" value = "1234"></c:set>
	<div>${bean.num }</div>
</body>
</html>