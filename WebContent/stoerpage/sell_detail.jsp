<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/JeonGu/css/custom.css" rel="stylesheet">
<title>title</title>



<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<link href="/JeonGu/css/custom.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript " src="jquery/jquery-3.1.1.min.js">

</script>



<script type="text/javascript">
	$(function() {

		$(".tab_content").hide();
		$(".tab_content:first").show();

		$("ul.tabs li").click(function() {
			$("ul.tabs li").removeClass("active").css("color", "#fffff");
			//$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
			$(this).addClass("active").css("color", "#fffff");
			$(".tab_content").hide()
			var activeTab = $(this).attr("rel");
			$("#" + activeTab).fadeIn()

		});
	});
</script>


<style type="text/css">



#tabbtn {
	-moz-box-shadow:inset 0px 1px 0px 0px #97c4fe;
	-webkit-box-shadow:inset 0px 1px 0px 0px #97c4fe;
	box-shadow:inset 0px 1px 0px 0px #97c4fe;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #3d94f6), color-stop(1, #1e62d0));
	background:-moz-linear-gradient(top, #3d94f6 5%, #1e62d0 100%);
	background:-webkit-linear-gradient(top, #3d94f6 5%, #1e62d0 100%);
	background:-o-linear-gradient(top, #3d94f6 5%, #1e62d0 100%);
	background:-ms-linear-gradient(top, #3d94f6 5%, #1e62d0 100%);
	background:linear-gradient(to bottom, #3d94f6 5%, #1e62d0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3d94f6', endColorstr='#1e62d0',GradientType=0);
	background-color:#3d94f6;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #337fed;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	width:100px;
	
	text-decoration:none;
	text-shadow:0px 1px 0px #1570cd;
}
#tabbtn:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #1e62d0), color-stop(1, #3d94f6));
	background:-moz-linear-gradient(top, #1e62d0 5%, #3d94f6 100%);
	background:-webkit-linear-gradient(top, #1e62d0 5%, #3d94f6 100%);
	background:-o-linear-gradient(top, #1e62d0 5%, #3d94f6 100%);
	background:-ms-linear-gradient(top, #1e62d0 5%, #3d94f6 100%);
	background:linear-gradient(to bottom, #1e62d0 5%, #3d94f6 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#1e62d0', endColorstr='#3d94f6',GradientType=0);
	background-color:#1e62d0;
}
#tabbtn:active {
	position:relative;
	top:1px;
}

        












#bar {
	position: fixed;
	top: 0;
	left: 65%;
	right: 0;
	min-height: 1000px;
	border: 1px solid gray;
}

#sellerboard .aa {
	background: #D4DCEB;
}

table td {
	padding-left: 10px;
}

ul.tabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 42px;
	width: 70%;
	font-family: "dotum";
	font-size: 12px;
	
}

ul.tabs li {

	border-radius: 10px;
	float: left;
	text-align: center;
	cursor: pointer;
	width: 88px;
	height: 31px;
	line-height: 31px;
	border: 1px solid #eee;
	margin-left:5px;
	font-weight: bold;
	background: #fafafa;
	overflow: hidden;
	position: relative;
	border: 1px solid black;
	box-radius:20px;
}

ul.tabs li.active {
	background: #584EDF;
	color: white;
}

ul.tabs li:HOVER {
	background-color: #584EDF;
	color: white;
}

.tab_container {
	border: 5px double #D4DCEB;

	clear: both;
	float: left;
	width: 100%;
	background: #FFFFFF;
	border-radius: 10px;
	min-height: 500px;
	margin-bottom: 30px;
}

.tab_content {

	margin-top: 20px;
	padding: 5px;
	font-size: 12px;
	display: none;
}

.tab_container .tab_content ul {
	width: 100%;
	margin: 0px;
	
}

.tab_container .tab_content ul li {
	padding: 5px;
	list-style: none
}

;
#container {
	width: 90%;
	margin: 0 auto;
}

.tab_container  .thumbnail:HOVER {
	border: 1px solid black;
}

tr, td {
	width: 100% +20px;
	height: 100% +20px;
}

div {
	  /*   border: 1px solid black;   */
   
	
}

#bar div {
	margin-left: 10%;
	margin-top: 15px;
}

#bar a {
	width: 100px;
	height: 50px;
	border: 1px solid red;
}
</style>
</head>
<body style="height: 10px">
	<jsp:include page="../header.jsp"></jsp:include>


<div
style="float: left; width: 100%; background: white; height:2000px;
box-shadow :5px 5px 5px 0px black; border-radius:30px; 
">


		<div style="background: #D4DCEB; padding: 2%">


			<div
	style="background: white; width: 60%;height:605px; margin: 40px; margin-left: 2%; ">


				<div style="float: left; height: 100%;width: 60%">
					<img alt="" src="img/pizza.JPG" style="width: 100%; height: 100%">

				</div>
				<div style="float: left; width: 40%; height: 100%; padding: 10px">
					<h3>
						<b>피자 시켜서 고기파티!</b>
					</h3>

					소고기+5가지 프리미엄치즈 조합 신상피자
					<hr>



					Domino's Pizza<br>

					<h3>
						<b>[도미노피자] 와규앤비스테카 오리지널L+콜라1.25L</b>
					</h3>
					<hr>
					<div style="height: 22%"></div>

					<img alt="" src="img/time.jpg">&nbsp;<font size="3px">남은시간
						<b>06</b>일 <b>18:30:43</b>
					</font> <br />
					<br /> <img alt="" src="img/surang.jpg">&nbsp;<font
						size="3px"><b>28,224</b>게 구매 (4,714개 남음)</font>
				</div>

			</div>
		</div>





		<div
			style="background: white; width: 45%; margin: 40px; margin-left: 14%; margin-bottom: 3%">




			<table style="margin: 15px" height="200" width="100% ">
				<tr style="">
					<td colspan="2" bgcolor="gray"><Strong>구매전 꼭 확인하세요!</Strong></td>
				</tr>
				<tr style="border: 1px aqua solid;">
					<td style="margin: 20px"><font size="3px" color="gray"><b>구매후,
								신청없이 받으세요! 무제한자동적립</b></font></td>
					<td style="padding-right: 5px">
						<button class="btn btn-hero btn-lg" role="button">쿠폰 받으러
							가기 >></button>
					</td>
				</tr>

				<tr bgcolor="#A3ACF3">
					<td><font size="3px"><b>최대 20% 세일/자동으로 적립되는 캐시백</b></font></td>
					<td></td>
				</tr>
			</table>



		</div>



		<div
			style="background: white; width: 48%;  margin: 40px; margin-left: 12%; margin-bottom: 3%">



			<div id="container" style="margin-left: 5%">
				<ul class="tabs" style="margin-left: 10">
					<li class="active" rel="tab1" id="tabbtn">상품상세정보</li>
					<li rel="tab2" id="tabbtn">댓글</li>
					<li rel="tab3" id="tabbtn">후기</li>
				</ul>
				<div style="height: 30px"></div>

				<div class="tab_container">
					<div id="tab1" class="tab_content">aaaaaaaaaaaaaaaaaaaaaa</div>
					<div id="tab2" class="tab_content">bbbbbbbbbbbbbbbbbbbbbbbb</div>

					<div id="tab3" class="tab_content">ccccccccccccccccc</div>




				</div>



			</div>
			<div style="clear: both;"></div>



		</div>
		<div
			style="background: white; width: 45%; margin: 40px; margin-left: 14%; margin-bottom: 3%;min-width: 600px;margin-right: 50px">

			<h4 style="margin-left: 15px;padding-bottom:20px; border-bottom: 2px dotted #D4DCEB" >
				<b>판매자 정보</b>
			</h4>
			
			

			<table border="1" width="100%" height="170" style="margin: 15px;"
				bordercolor="gray" id="sellerboard">
				<tr>

					<td class="aa">상호/대표자</td>
					<td>주식회사바바/김재현</td>
					<td class="aa">사업자번호</td>
					<td>20685071124</td>
				</tr>
				<tr>
					<td class="aa">연락처</td>
					<td>02312421</td>
					<td class="aa">E-mail</td>
					<td>vbdb@naver.com</td>

				</tr>
				<tr>
					<td class="aa">응대가능시간</td>
					<td>09시 ~ 15시</td>
					<td class="aa">사업장 소재지</td>
					<td>서울시 남진구 라가루토 24길 28</td>
				</tr>
				<tr>
					<td class="aa">통신판매 신고번호</td>
					<td colspan="3">02-12848027</td>
				</tr>
			</table>





		</div>

		<div
			style="background: white; width: 45%; margin: 40px; margin-left:15%; margin-bottom: 3%; font-size: 13px; padding: 20px; background: #D4DCEB">


			<b>고객센터 전화번호 </b>: <font color="blue">1588- 2718</font> <Br> <font
				color="gray">본 판매자께서는 구매안전서비스에 동의하고 있습니다.</font> <font
				color="ORANG" style="margin-left: 10%"><b>결제대금예치업 등록 :
					02-006-0000</b></font>
		</div>



	</div>






	<div style="float: left; width: 38%; ">



		<div style="background: white; width: 25%;" id="bar">
		
			<div style="width: 80%; height: 10%"></div>
			<div
				style="width: 80%; height: 10%; margin-top: 70px; 
				padding:20px;
				border-bottom: 1px solid #D4DCEB; border-top: 1px solid #D4DCEB;">
				
				

				구매가 &nbsp; &nbsp;<font color="red" size="5px"><b>9,000</b></font>



			</div>

			<div
				style="padding: 20px; width: 80%; height: 6%; background: black; color: white; text-align: center; font-size: 5">
				옵션추가금없이 전 상품 배송비 무료!</div>



			<div
				style="padding: 20px; width: 80%; min-height: 400px; background: #D4DCEB; ">


				<b>상품선택</b>&nbsp;&nbsp; <select><option>옵션</option></select>

			</div>
			<div
				style="padding: 20px; width: 80%; height: 10%; background: #D4DCEB;">
				<b>주문금액</b> &nbsp; &nbsp;<font color="red" size="4px"><b>9,000</b></font>
			</div>

			<div>
				<a href="Basket.cw"  class="btn btn-compose" style="color: red;background: white;">장바구니 </a> 
					<a href="Costpay.cw"  class="btn btn-compose"> 바로구매 </a>
			</div>


		</div>
</div>










	<div style="clear: both;"></div>
	
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>