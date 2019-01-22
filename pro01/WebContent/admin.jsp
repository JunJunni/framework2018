<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>통합관리자 : 메인</title>
<style>
div>table {
	margin: 30px auto;
}

td, th {
	width: 100px;
	height: 25px;
	text-align: center;
}

td {
	color: #FFC828;
	font-weight: bold;
}

.charts {
	width: 1050px;
	margin: auto;
}
</style>
<link rel="stylesheet" href="css/frame.css" type="text/css">

<script type="text/javascript" src="js/jquery.min.js"></script>
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
			<li><a href="#">매출관리</a></li>
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
							backgroundColor : [ 'rgba(189,192,197)',
									'rgba(189,192,197)', 'rgba(91, 100, 113)',
									'rgba(189,192,197)' ],
						} ]
					},
					options : {
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
					}
				});
			</script>
		</div>
		<div>
			<h6>인기상품 Top5</h6>
			<canvas id="popularItem" width="320" height="240"></canvas>
			<script>
				var ctx = document.getElementById("popularItem")
						.getContext("2d");
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
						responsive : false,
			
					}
				});
			</script>
		</div>
	</div>
	<!-- end div class charts  -->
	<div>차트 들어가야함</div>
	<div id="footer">footer</div>
</body>
</html>