<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
		$("#table2 td:nth-child(1)").css("font-weight", "bold");
	});
</script>

<div id="layer"
	style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
	<img
		src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
		id="btnCloseLayer"
		style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
		onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>









<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	// 우편번호 찾기 화면을 넣을 element
	var element_layer = document.getElementById('layer');

	function closeDaumPostcode() {
		// iframe을 넣은 element를 안보이게 한다.
		element_layer.style.display = 'none';
	}

	function sample2_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = data.address; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 기본 주소가 도로명 타입일때 조합한다.
						if (data.addressType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample2_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample2_address').value = fullAddr;
						document.getElementById('sample2_addressEnglish').value = data.addressEnglish;

						// iframe을 넣은 element를 안보이게 한다.
						// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
						element_layer.style.display = 'none';
					},
					width : '100%',
					height : '100%'
				}).embed(element_layer);

		// iframe을 넣은 element를 보이게 한다.
		element_layer.style.display = 'block';

		// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
		initLayerPosition();
	}

	// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	function initLayerPosition() {
		var width = 300; //우편번호서비스가 들어갈 element의 width
		var height = 460; //우편번호서비스가 들어갈 element의 height
		var borderWidth = 5; //샘플에서 사용하는 border의 두께

		// 위에서 선언한 값들을 실제 element에 넣는다.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
				+ 'px';
		element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
				+ 'px';
	}
</script>












<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="//apis.daum.net/maps/maps3.js?apikey=발급받은 API KEY를 사용하세요&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	mapOption = {
		center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
		level : 5
	// 지도의 확대 레벨
	};

	//지도를 미리 생성
	var map = new daum.maps.Map(mapContainer, mapOption);
	//주소-좌표 변환 객체를 생성
	var geocoder = new daum.maps.services.Geocoder();
	//마커를 미리 생성
	var marker = new daum.maps.Marker({
		position : new daum.maps.LatLng(37.537187, 127.005476),
		map : map
	});

	function sample5_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = data.address; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 기본 주소가 도로명 타입일때 조합한다.
						if (data.addressType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 주소 정보를 해당 필드에 넣는다.
						document.getElementById("sample5_address").value = fullAddr;
						// 주소로 좌표를 검색
						geocoder
								.addr2coord(
										data.address,
										function(status, result) {
											// 정상적으로 검색이 완료됐으면
											if (status === daum.maps.services.Status.OK) {
												// 해당 주소에 대한 좌표를 받아서
												var coords = new daum.maps.LatLng(
														result.addr[0].lat,
														result.addr[0].lng);
												// 지도를 보여준다.
												mapContainer.style.display = "block";
												map.relayout();
												// 지도 중심을 변경한다.
												map.setCenter(coords);
												// 마커를 결과값으로 받은 위치로 옮긴다.
												marker.setPosition(coords)
											}
										});
					}
				}).open();
	}
</script>






<style type="text/css">

.in_tex{
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#777777;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}
.in_tex:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed));
	background:-moz-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-webkit-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-o-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-ms-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed',GradientType=0);
	background-color:#dfdfdf;
}
.in_tex:active {
	position:relative;
	top:1px;
}


.myButton {

width:40px;
height:20px;
font-size:10px;

	-moz-box-shadow: 0px 1px 0px 0px #1c1b18;
	-webkit-box-shadow: 0px 1px 0px 0px #1c1b18;
	box-shadow: 0px 1px 0px 0px #1c1b18;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #eae0c2
		), color-stop(1, #ccc2a6));
	background: -moz-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: -webkit-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: -o-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: -ms-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: linear-gradient(to bottom, #eae0c2 5%, #ccc2a6 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#eae0c2',
		endColorstr='#ccc2a6', GradientType=0);
	background-color: #eae0c2;
	-moz-border-radius: 12px;
	-webkit-border-radius: 12px;
	border-radius: 12px;
	border: 2px solid #756848;
	display: inline-block;
	cursor: pointer;
	
	
	color: black;
	font-family: Arial;
	
	font-weight: bold;

text-decoration: none;
/* 	text-shadow: 0px 1px 0px #ffffff;
	 */
	
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ccc2a6
		), color-stop(1, #eae0c2));
	background: -moz-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: -webkit-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: -o-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: -ms-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: linear-gradient(to bottom, #ccc2a6 5%, #eae0c2 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ccc2a6',
		endColorstr='#eae0c2', GradientType=0);
	background-color: #ccc2a6;
}

.myButton:active {
	position: relative;
	top: 1px;
}




.iput_but {
	-moz-box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	-webkit-box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5));
	background:-moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-o-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5',GradientType=0);
	background-color:#79bbff;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #84bbf3;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528ecc;
}
.iput_but:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5), color-stop(1, #79bbff));
	background:-moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-o-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5', endColorstr='#79bbff',GradientType=0);
	background-color:#378de5;
}
.iput_but:active {
	position:relative;
	top:1px;
}


td {
	padding-left: 10px;
}

#bk_item td {
	padding: 20px;
}

table {
	text-align: center;
}

#bk_title td {
	padding-top: 10px;
	padding-bottom: 10px;
	background: #E2E2E2;
	font-weight: bold;
	min-width: 80px;
}

#choice {
	width: 120px;
	height: 40px;
	border: 1px solid gray;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	margin-left: 10px;
}

#table1 {
	border-bottom: 1px solid #BFBABA;
}

#table2 input {
	padding: 4px;
	margin: 3px;
}

#table2 td {
	padding: 5px;
}

#zom {
	border-left: 2px solid gray;;
	border-top: 2px solid gray;
}
</style>
</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div
		style="min-height: 800px;  background: white;   
border-radius:30px;box-shadow :5px 5px 5px 0px black;padding-right:4%;">




		<table style="margin-left: 7%;margin-top: 4%" id="table1">
			<tr style="width: 100px; border-bottom: 2px solid black;">
				<td style="padding: 20px; text-align: left;" colspan='8'"><font
					size="5"><b>주문 / 결제</b></font></td>
			</tr>


			<tr id="bk_title">
				<td></td>
				<td align="left">상품정보</td>
				<td>수량</td>
				<td>상품금액</td>
				<td>할인금액</td>
				<td>배송비</td>
				<td>판매자명</td>
				<td>주문금액</td>

			</tr>




			<tr id="bk_item">
				<td style="padding: 10px"><input type="checkbox"></td>
				<td width="40%">
				<div style="float: left; width: 20%">
						<img alt="" src="img/pizza.JPG" style="width: 75px; height: 75px;">
					</div>
					
					
					<div 
		style="  width:70%; margin-top: 5%; margin-left: 20px; float: left;
		padding-right:50px; padding-left: 10px; 
		 font-weight: bold;">
						남자 캐주얼운동화 2color
					</div></td>
				<td>1<br>
				<input type="button" class="myButton" value="변경"></td>
				<td width="150px"><b>410,000 원</b></td>
				<td><font color="gray">0</font></td>
				<td><font color="gray">2500</font></td>
				<td><font color="gray">김재현바사사사</font></td>
				<td style=" padding-right: 10px; width: 130px"><font style="padding-left: 20px;"
					color="green"><b>4,100 원</b></font> <br>
			<input type="button" value="수정" class="myButton">&nbsp;<input type="button"class="myButton"
					value="삭제"></td>



			</tr>



			<tr>
				<td colspan="5" style="padding: 5px;" id="zom">



					<table 
						style="padding: 20px; width: 100%; text-align: left;" id="table2" >

						<tr>
							<td colspan="2" style="padding: 10px"><font size="5px"><b>배송지
										정보 </b></font></td>
						</tr>
						<tr style="border-bottom: 1px dotted gray">
							<td width="15%">배송지선택</td>
							<td width="100%"><input type="radio">신규배송지&nbsp;&nbsp;&nbsp; <input
								type="radio"> 최근: 김재현</td>
						</tr>
			
						<tr>
							<td>수령인</td>
							<td><input type="text" size="8" class="in_tex"></td>
						</tr>
						<tr>
							<td>배송지명</td>
							<td><input type="text" size="8" class="in_tex"></td>
						</tr>
						<tr>
							<td>연락처1</td>
							<td><input type="text" size="3" class="in_tex">-<input type="text"
								size="4" class="in_tex">-<input type="text" size="4" class="in_tex"></td>
						</tr>
						<tr>
							<td>연락처2</td>
							<td><input type="text" size="3" class="in_tex">-<input type="text"
								size="4" class="in_tex">-<input type="text" size="4" class="in_tex"></td>
						</tr>
						<tr>
							<td>배송지 주소</td>
							<td><input type="text" id="sample2_postcode"
								placeholder="우편번호" name="addr" class="in_tex"> <input
								type="button" onclick="sample2_execDaumPostcode()"
								value="우편번호 찾기" class="iput_but"><br> <input
								type="text" id="sample2_address" placeholder="한글주소"
								class="in_tex"> <input type="text"
								id="sample2_addressEnglish" placeholder="영문주소" class="in_tex"><br>


								<input type="text" id="sample5_address" placeholder="주소"
								class="in_tex" name="addr2"> <input type="button"
								onclick="sample5_execDaumPostcode()" value="주소 검색"
								class="iput_but"><br>
								<div id="map"
									style="width: 300px; height: 300px; margin-top: 10px; display: none"></div></td>
						</tr>
						<tr>
							<td>배송메모</td>
							<td>안감털 패딩슬립온 남자 캐주얼운동화 2color 외 1건<br> <input
								type="text" size="50" class="in_tex">
						</tr>



						<!--  
(49515) 부산광역시 사하구 다송로 23 다대롯데캐슬블루 105동 2204호정보수정  <br>



배송메모   <br>


안감털 패딩슬립온 남자 캐주얼운동화 2color 외 1건  <br>
	 -->

					</table>

				</td>


				<td colspan="3"
					style="padding: 30px; background: #E2E2E2; font-weight: bold;">

					<div align="left">결제금액</div> <br>
					<div align="left" style="font-size: 23px">
						<b> 111,900 원</b>
					</div> <br> <br>
					<div align="left" style="float: left;">총 상품금액</div>
					<div align="right">120,800 원</div>
					<br>
					<div align="left" style="float: left;">배송비</div>
					<div align="right">(+) 2,500원</div> <br>

					<div align="left" style="float: left;">총 할인금액</div>
					<div align="right">(-) 0원</div>
					<br>





				</td>
			</tr>

		</table>

		<div align="center" style="margin-top: 30px">
			<a href="#myModal" data-toggle="modal" title="Compose"
				class="btn btn-compose" style="background: gray; color: white;"
				id="choice">결제하기 </a>

		</div>





	</div>





	<jsp:include page="../footer.jsp"></jsp:include>
<body>

</body>
</html>