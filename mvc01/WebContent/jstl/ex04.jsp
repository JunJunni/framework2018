<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="su" value="100000"></c:set>
	<fmt:formatNumber value="${su }" var = "money" pattern="$###,###"></fmt:formatNumber>
	<c:out value="${money }"></c:out>
	
	<c:set var = "nal" value="<%=new Date() %>"/>
	<fmt:formatDate value=" ${nal }" var="nalja" pattern="yy-MM-dd HH:mm:ss"/>
	<h2><c:out value = "${nalja }"></c:out></h2>
</body>
</html>