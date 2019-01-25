<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>통합관리자 | 메인</title>
<style>
</style>
<link rel="stylesheet" href="css/frame.css" type="text/css">
<link rel="stylesheet" href="css/admin.css" type="text/css">
<link rel="stylesheet" href="css/progresscircle.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/progresscircle.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="header">
		관리자님 환영합니다.
		<button id="btnLogin">로긴</button>
	</div>
	<div id="menu">
		<ul>
			<li><a href="admin.jsp">관리홈</a></li>
			<li><a href="test.jsp">매출관리</a></li>
			<li><a href="#">주문관리</a></li>
			<li><a href="#">회원관리</a></li>
			<li><a href="#">통계</a></li>
			<li><a href="#">일정관리</a></li>
		</ul>
	</div>
	<div id="content">
		<table>
			<tr>
				<th>오늘 방문수</th>
				<td>101명</td>

				<th>오늘의 주문</th>
				<td>0회</td>

				<th>오늘의 매출</th>
				<td>0원</td>

				<th>1월 매출</th>
				<td>580,000원</td>
			</tr>
			<tr id="forborder">
				<th>어제 방문수</th>
				<td>101명</td>

				<th>어제의 주문</th>
				<td>0회</td>

				<th>어제의 매출</th>
				<td>0원</td>

				<th>12월 매출</th>
				<td>1,280,000</td>
			</tr>

		</table>
	</div>
	<div class="charts">
		<!-- 주문건수 차트 -->
		<div id="ordercontainer">
			<h6>주문건수</h6>
			<canvas id="orderCount" width="320" height="240"></canvas>
			<script>
				var ctx = document.getElementById("orderCount")
						.getContext("2d");
				var myChart = new Chart(ctx, {
					type : 'horizontalBar',
					data : {
						labels : [ "입금전", "결제완료", "배송준비", "배송중" ],
						datasets : [ {

							data : [ 3, 5, 10, 3 ],
							backgroundColor : [ 'rgba(189,192,197,1.0)',
									'rgba(189,192,197,1.0)',
									'rgba(91, 100, 113,1.0)',
									'rgba(189,192,197,1.0)' ],
						} ]
					},
					options : {
						legend : {
							display : false
						},
						responsive : false,
						scales : {
							xAxes : [ {
								ticks : {
									min : 0,
									max : 20,
									beginAtZero : true
								}

							} ]
						}
					},

				});
			</script>
		</div>
		<!-- 주문건수 차트 끝-->
		<div id="popularcontainer">
			<!-- 인기상품 차트 -->
			<h6>인기상품 Top5</h6>
			<canvas id="popularItem" width="360" height="240"></canvas>
			<script>
				var ctx = document.getElementById("popularItem").getContext(
						"2d");
				var myChart = new Chart(ctx, {
					type : 'pie',
					data : {
						labels : [ "다이아국스", "마리오카트", "세그웨이", "flyCar", "쌀국수" ],
						datasets : [ {

							data : [ 17, 23, 8, 33, 19 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)', //1번째 그래프의 바탕색
							'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)', ],
						} ]
					},
					options : {
						legend : {
							position : 'bottom'
						},
						responsive : false
					}
				});
			</script>
		</div>
		<!-- 인기상품 차트 끝-->
		<!-- 월 목표 달성율 차트 -->
		<div id="goalcontainer">
			<h6>월 목표 달성율</h6>

			<div class="circlechart" data-percentage="1">
				<!-- 프로그레스 바를 이용해보자  -->
				<script type="text/javascript">
					$(function() {
						$('.circlechart').circlechart();
					});
				</script>
			</div>
		</div>
		<!-- 월 목표 달성율 차트 끝 -->
	</div>
	<div class="salescontainer">
		<h4 id="Monthlysales">월 매출</h4>
		<canvas id="sales" width="1050" height="500"></canvas>
		<script>
			var ctx = document.getElementById("sales").getContext("2d");
			var myChart = new Chart(
					ctx,
					{
						type : 'bar',
						data : {
							labels : [ "Jan", "Feb", "Mar", "Apr", "May",
									"Jun", "Jul", "Aug", "Sep", "Oct", "Nov",
									"Dec" ],
							datasets : [
									{
										label : "매출액",
										data : [ 500, 23, 8, 33, 19, 0, 0, 0,
												0, 0, 0, 0 ],
										backgroundColor : [
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)',
												'rgba(255,120,0,0.2)' ],
										borderColor : [ 'rgba(255,120,0,1)',
												'rgba(255,120,0,1)',
												'rgba(255,120,0,1)',
												'rgba(255,120,0,1)',
												'rgba(255,120,0,1)',
												'rgba(255,120,0,1)',
												'rgba(255,120,0,1)',
												'rgba(255,120,0,1)',
												'rgba(255,120,0,1)' ],
										borderWidth : 1
									},
									{
										label : "평균",
										type : "line",
										borderColor : [ 'rgba(189,192,197,1)' ],
										data : [ 0, 2, 8, 33, 190, 0, 0, 0, 0,
												0, 0, 0 ],
										fill : false
									},
									{
										label : "매출",
										type : "line",
										borderColor : "#FFC828",
										data : [ 0, 2, 8, 330, 19, 0, 0, 0, 0,
												0, 0, 0 ],
										fill : false
									} ]
						},

						options : {
							legend : {
								display : true
							},
							responsive : false,
						}
					});
		</script>
	</div>


	<div id="footer">footer</div>
</body>
</html>