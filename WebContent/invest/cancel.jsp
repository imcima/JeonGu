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
	text-align: center;
}
.canceltbl{
	text-align: center;
	border-collapse: collapse;
	border: 1px solid skyblue;
	margin: 5px auto;
	
}
.canceltbl td{
	border: 1px solid skyblue;
	padding: 10px;
	font-size: 2em;
}
.whitebtn{
	background-color: white;
	border: 1px solid #ddd;
	color: skyblue;
	border-radius: 5px;	
}
.frm{
	display: inline;
}
</style>
</head>
<body>
<br><br><br>

<c:forEach var="l" items="${requestScope.flist}">	
	<div class="container">	
		<form action="cancel.investf" class="frm">
			<input type="hidden" value="${l.funno }" name="funno">
			<input type="hidden" value="${l.croid }" name="croid"> 
			<table class="canceltbl">
				<tr>
					<td>펀딩한 날짜</td>
					<td>${l.date }</td>
				</tr>
				<tr>
					<td>수량</td>
					<td>${l.qty }</td>
				</tr>
				<tr>
					<td>총 금액</td>
					<td>${l.invmoney }</td>
				</tr>
			</table>
			<%-- <label>펀딩한 날짜</label>${l.date }<br>
			<label>수량</label>${l.qty }<br>
			<label>총 금액</label>${l.invmoney }<br> --%>
			<input type="submit" value="취소하기" class="whitebtn">			
		</form>
		<form action="content.investf" class="frm">
			<input type="hidden" value="${l.croid }" name="croid">
			<input type="submit" value="돌아가기" class="whitebtn">
		</form>
	</div>
	<br>
</c:forEach>
</body>
</html>