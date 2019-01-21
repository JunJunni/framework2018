<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bbs</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="btn-group btn-group-justified" role="group">
					<a class="btn btn-default" href="index.do" role="button">HOME</a> <a
						class="btn btn-default " href="intro.do" role="button">INTRO</a>
					<a class="btn btn-default active" href="list.do" role="button">BBS</a>
					<a class="btn btn-default" href="add.do" role="button">LOGIN</a>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-12">
				<ol class="breadcrumb">
					<li><a href="index.do">Home</a></li>
					<li class="active">Bbs</li>
				</ol>
				<div class="page-header">
					<h1>
						게시판<small>xxx게시판</small>
					</h1>
				</div>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items = "${alist }" var = "bean">
					<tr>
						<td><a href="detail.do?idx="${bean.num }">${bean.num }</a></td>
						<td><a href="detail.do?idx="${bean.num }">${bean.sub }</a></td>
						<td><a href="detail.do?idx="${bean.num }">${bean.cnt }</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- end table -->
			<a href="add.jsp" role="button" class="btn btn-primary">add</a>
			<!-- end add button -->
		</div>
		<!-- end div class=row -->
	</div>
</body>
</html>





