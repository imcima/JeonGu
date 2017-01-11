<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

</head>
<body>
<br><br><br>
<div class="container" style="padding:20px;">
		<div class="container-fluid cards-row">
			<div class="container">
				<div class="row">
				<c:forEach var="l" items="${requestScope.crowdlist}">				
					<form action="content.investf" method="post">
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<!-- <img src="img/invest.jpg" alt=""> -->
								<div class="caption">	
									<h3>${l.title }</h3>
									<textarea class="form-control" readonly="readonly"
									style="overflow:hidden;resize:none;height: 70px;">[${l.croname }] ${l.content }
									</textarea>
									<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="60"
										aria-valuemin="0" aria-valuemax="100" style="width: ${l.total/l.goalmoney*100}%;">
										<fmt:formatNumber value="${l.total/l.goalmoney*100}" pattern="#.00"  />
										%</div>
									</div>
									<p>
										<input type="hidden" name="croid" value="${l.croid }">
										<input type="submit" class="btn btn-primary" value="상세정보">
										<!-- <a href="#" class="btn btn-primary" role="button">상세정보</a> -->
									</p>
								</div>
							</div>
						</div>
					</form>				
				</c:forEach>					
				</div>
			</div>
		</div>
	</div>
</body>
</html>