<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
	<h1>jstl 제어</h1>
	<h2>조건문</h2>
	<c:if test = "${true}">
		<p>c:if는 else 문이 없다..!!</p>
	</c:if>
	<c:set var="obj1" value ="5" scope = "page"></c:set>
	<c:set var="obj2" value ="1" scope = "page"></c:set>
	
	<c:if test = "${obj1 le obj2 }">
		<p>${obj2 }보다 작거나 같다.</p>
	</c:if>
	<c:if test = "${obj1 gt obj2 }">
		<p>${obj2 }보다큼</p>
	</c:if>
	
	<h2>반복문</h2>
	<c:forEach begin="1" end = "10" step ="2" var ="obj3">
		<p>${obj3 }출력</p>
	</c:forEach>
	</hr>
	
	<% 
		ArrayList<String> alist = new ArrayList<String>();
		alist.add("item1");
		alist.add("iten2");
		alist.add("iten3");
		alist.add("iten4");
		
		//for(Strimg msg : alist){}
		
		HashMap<String,String>hmap = new HashMap<String,String>();
		
		pageContext.setAttribute("alist", hmap);
	%>
	<c:forEach var ="msg" items = "${alist }">
	<p>${msg.key} : ${msg.value }</p>
	</c:forEach>
</body>
</html>