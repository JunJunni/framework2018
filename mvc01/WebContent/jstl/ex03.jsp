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
	<h1>etc jstl 기능</h1>
	<c:set var="msg" value="java,web,db,spring"></c:set>
	<c:forTokens var="ele" items="${msg }" delims=",">
		<div>${ele }</div>
	</c:forTokens>
	<c:import url = "ex01.jsp"></c:import>
	<p>위에는 가져온 내용</p>
	<c:url value = "http//daum.net" var = "daum"></c:url>
	<c:url value ="/" var = "home"></c:url>
	<ul>
		<li>네이버 - <a href = "http://naver.com">링크</a><li>
		<li>다음 - <a href = "${daum }">링크</a><li>
		<li>home - <a href = "${home}">링크</a><li>
	</ul>
</body>
</html>