<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
</style>

<link href="blog.css" rel="stylesheet">

</head>
<body>

<br><br><br>
    
<div class="container">
	<div class="details">
		<ul>
			<li>글번호 : ${cdto.croid}</li>
			<li>개설자 아이디 : ${cdto.sellerid}</li>
			<li>카테고리 번호 : ${cdto.cateno}</li>
			<li>개설자 이름: ${cdto.sellername}</li>
			<li>크라우드이름 : ${cdto.croname}</li>
		</ul>
		<ul>
			<li>개설일자 : ${cdto.opendate}</li>
			<li>마감일자 : ${cdto.closedate}</li>
			<li>목표 금액: ${cdto.goalmoney}</li>
			<li>모인 금액: ${cdto.total}</li>
			<li>상태 : ${cdto.state}</li>
			<li>단위 투자금액 : ${pdto.price }
		</ul>
	</div>
	<div class="blog-header">
		<h1 class="blog-title">${cdto.title}</h1>
		<!-- <p class="lead blog-description">The official example template of creating 
		a blog with Bootstrap.</p> -->
	</div>
	<div class="row">
	
		${cdto.content}<br>
	
		<c:if test="${sessionScope.id != null }">
			<c:if test="${sessionScope.id != cdto.sellerid }">
				<nav>
					<ul class="pager">
						<li><a href="funding.investr?croid=${cdto.croid }&price=${pdto.price }">펀딩하기</a></li>
						<c:if test="${fdto.funno!=0}">
						<li><a href="funding.investr">펀딩취소</a></li>
						</c:if>
					</ul>
				</nav>
			</c:if>
			<c:if test="${sessionScope.id == cdto.sellerid }">
				<nav>
					펀딩 취소 요청이 있습니다.
					<ul class="pager">
						<li><a href="#">펀딩 취소 승인 페이지로 가기</a></li>
						<li><a href="#">펀딩 폭파</a></li>
						<li><a href="#">수정</a></li>						
					</ul>
				</nav>
			</c:if>
		</c:if>
	</div>	
</div>
</body>
</html>