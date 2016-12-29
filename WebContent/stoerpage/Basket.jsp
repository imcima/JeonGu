<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>title</title>



<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<link href="/JeonGu/css/custom.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">


td{
padding-left: 10px;

}
#bk_item td{

padding: 20px;

}

table{text-align: center;

}

table tr{
border-bottom: 1px solid #BFBABA;

}

#bk_title td{

padding-top: 10px;
padding-bottom: 10px;

}

#choice{
width: 120px;
height: 40px;
border: 1px solid gray;
font-size: 12px;
font-weight: bold;
text-align: center;
margin-left: 10px;


}


.MyB {

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

.MyB:hover {
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

.MyB:active {
	position: relative;
	top: 1px;
}
</style>
</head>

<body>
 	<jsp:include page="../header.jsp"></jsp:include>
	
	<div style="min-height: 800px;background: white;border-radius:30px; 
box-shadow :5px 5px 5px 0px black;" >
	
	
	
	
	<table  style="margin-left: 4%; margin-top: 4%; " id="table1">
	<tr style="width: 100px;border-bottom: 2px solid black;">
	<td style="padding: 20px; text-align: left;" colspan='8'>
	<font size="5" ><b>장바구니</b></font>
	</td>
	</tr>
	
	
	<tr id="bk_title">
	<td ></td>
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
	<td><div style="float: left;"><img alt="" src="img/pizza.JPG" style="width: 75px;
height: 75px;" >
</div>
<div style="float: left;margin-top: 20px;margin-left: 10px;margin-right: 300px"><b>안감털 패딩슬립온 남자 캐주얼운동화 2color</b></div> </td>
	<td>1<br><input type="button" value="변경"class="MyB"></td>
	<td><b>410,000 원</b></td>
	<td><font color="gray">0</font></td>
	<td><font color="gray">2500</font></td>
	<td><font color="gray">김재현바사사사</font></td>
	<td style="padding-left: 40px;padding-right: 10px"><font color="green"><b>4,1000 원</b></font>
	<br><input type="button" value="수정" class="MyB">&nbsp;<input type="button" value="삭제" class="MyB"></td>
	
	
	
	</tr>
	
	
	
	<tr>
	<td colspan="5"></td>
	<td colspan="3" style="padding: 10px ;color: white; background: gray;">
	
	<div align="left" style="float: left;">총 상품금액 </div> 
<div align="right">120,800 원</div><br>
<div align="left" style="float: left;">배송비</div>
 <div align="right">(+) 2,500원</div>
<br>

 <div align="left" style="float: left;">총 할인금액</div>
<div align="right">(-) 0원</div><br>

  <div align="left" style="float: left;">  결제금액 </div>
<div align="right">(-) 111,900 원</div>
 
	
	
	</td>
	</tr>
	
	</table>
	
	<div align="center" style="margin-top: 30px">
<a href="#myModal" data-toggle="modal" title="Compose"
			class="btn btn-compose" style="background: gray; color: white; "id="choice"> 주문하기 </a>

<a href="#myModal" data-toggle="modal" title="Compose" style="background: white;color: gray;"
			class="btn btn-compose" id="choice"> 쇼핑홈가기 </a>
</div>
	
	
	
	
	
	</div>
	
	
	
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>