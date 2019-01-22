<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
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
					<a class="btn btn-default " href="list.do" role="button">BBS</a> <a
						class="btn btn-default active" href="add.do" role="button">LOGIN</a>
				</div><!-- end btn menu  -->
			</div><!-- end col-md-12 -->
		</div><!-- end row end  -->


		<div class="row">
			<div class="col-md-12">
			<ol class="breadcrumb">
				<li><a href="index.do">Home</a></li>
				<li><a href="list.do">Bbs</a></li>
				<li class="active">Add</a></li>
			</ol>
				<div class="page-header">
					<h1>Write<small>xxx게시판</small></h1>
				</div><!--end page-header -->
				
				<!-- form start -->
		<form action = "insert.do">
			<div class="form-group">
				<label for="sub">Subject</label> <input
					type="text" name ="sub" class="form-control" id="sub"
					placeholder="Please insert the subject">
			</div>
			
			<div class="form-group">
				<label for="content">Content</label> <textarea class="form-control" name ="content" id="content"
					placeholder="Please insert the content"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">write</button>
			<button type="reset" class= "btn btn-default">cancel</button>
		</form>
			</div><!-- end col-md-12 -->
		</div><!-- end row -->
	</div><!-- end div container -->
</body>
</html>










