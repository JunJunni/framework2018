<%@page import="com.bit.model.JavaBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String msg = "welcome";
		pageContext.setAttribute("msg", msg);

		String[] msgs = { "item1", "item2", "item3", "item4" };
		pageContext.setAttribute("msgs", msgs);

		ArrayList<String> alist = new ArrayList<String>();
		alist.add("array1");
		alist.add("array2");
		alist.add("array3");
		alist.add("array4");
		pageContext.setAttribute("alist", alist);
	%>
	<h1>el 활용</h1>
	<div>el page scope : ${pageScope.msg}</div>
	<div>el:${msg}</div>
	<div>el request scope : ${requestScope.msg}</div>
	<div>
		java:<%=request.getAttribute("msg")%></div>

	<%
		String[] strs = (String[]) pageContext.getAttribute("msgs");
	%>
	<ul>
		<li><%=strs[0]%></li>
		<li><%=strs[1]%></li>
		<li><%=strs[2]%></li>
		<li><%=strs[3]%></li>
	</ul>

	<ul>
		<li>${msgs[0] }</li>
		<li>${msgs[1] }</li>
		<li>${msgs[2] }</li>
		<li>${msgs[3] }</li>
	</ul>

	<%
		ArrayList<String> alist2 = (ArrayList<String>) pageContext
				.getAttribute("alist");
	%>
	<ol>
		<li><%=alist2.get(0)%></li>
		<li><%=alist2.get(1)%></li>
		<li><%=alist2.get(2)%></li>
		<li><%=alist2.get(3)%></li>
	</ol>

	<ol>
		<li>${alist.get(0)}</li>
		<li>${alist.get(1)}</li>
		<li>${alist.get(2)}</li>
		<li>${alist.get(3)}</li>
	</ol>
	<%
		JavaBean bean = new JavaBean();
	%>
	<div>int:${bean.num }</div>
</body>

</html>