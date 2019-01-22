<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/" var="root"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome to bootstrap</title>
<link rel="stylesheet" type="text/css"
	href="${root }css/bootstrap.min.css" />
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.min.js"></script>
</head>
<body>
	<!--navbar  start-->
	<div class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Bitcamp</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="${root }index.do">HOME</a></li>
				<li><a href="${root }intro.do">INTRO</a></li>
				<li class="active"><a href="${root }bbs/list.do">BBS</a></li>
				<li><a href="#">LOGIN</a></li>
			</ul>
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- narbar end  -->

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h1>NoticeBoard</h1>
					<p>write</p>
					<p>
						<a class="btn btn-primary btn-lg" href="list.do" role="button">view
							list</a>
					</p>
				</div>
			</div>
		</div>
		<!-- jumbotron end  -->
		<div class="row">
			<div class="col-xs-12 col-md-12">
				<!-- form start -->
				<form class="form-horizontal" action="insert.do" method ="post">
					<div class="form-group">
						<label for="sub" class="col-sm-2 control-label">Subject</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sub"
								placeholder="subject">
						</div>
					</div>
					<div class="form-group">
						<label for="content" class="col-sm-2 control-label">Content</label>
						<div class="col-sm-10">
							<textarea name="content" class="form-control" id="content"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type ="submit" class="btn btn-primary">write</button>
							<button type ="reset" class="btn btn-primary">cancel</button>
						</div>
					</div>			
				</form>
				<!-- form end -->
			</div>
		</div>
		<!-- content end  -->

		<div class="row">
			<div class="col-md-12">
				<address>
					<strong>Twitter, Inc.</strong><br> 1355 Market Street, Suite
					900<br> San Francisco, CA 94103<br> <abbr title="Phone">P:</abbr>
					(123) 456-7890
				</address>

				<address>
					<strong>Full Name</strong><br> <a href="mailto:#">first.last@example.com</a>
				</address>
			</div>
		</div>
		<!-- footer end -->
	</div>
	<!--  container end  -->
</body>
</html>



