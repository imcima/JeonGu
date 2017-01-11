<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	width: 700px;
	background-color: white;
	border-radius: 20px;
	padding : 20px;
}
.whitebtn{
	background-color: white;
	border: 1px solid #ddd;
	color: skyblue;
	border-radius: 5px;
	
}
.frminline{
	display: inline;
}
</style>
<script type="text/javascript">

function inputQty(q){
	var qty = Number(q.value);
	var invmoney = qty * ${param.price};	
	oInvmoney = document.getElementById("invmoney");
	oInvmoney.innerHTML = invmoney;
	
}

</script>
</head>
<body>
<br><br><br><br>
<div class="container">
투자하실 수량을 입력하세요.<br>
개당 가격 : ${param.price}<br>
		<form action="pay.investf" class="frminline">
			<input type="hidden" name="croid" value="${param.croid }"> 
			<label>수량</label>&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" value="" id="qty" name="qty" onblur="inputQty(this)"><br>
			<label>금액</label>&nbsp;&nbsp;&nbsp;&nbsp;
			<span name="invmoney" id="invmoney"></span><br><!-- 결제될 금액 보여줄 부분 -->
			<input type="submit" value="결제하기" class="whitebtn">			
		</form> 
		<form action="content.investf" class="frminline">
			<input type="hidden" name="croid" value="${param.croid}">
			<input type="submit" value="돌아가기" class="whitebtn">
		</form>
	</div>
</body>
</html>