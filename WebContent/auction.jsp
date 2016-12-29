<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>title</title>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="backto">
			<div class="container">
				Origional Source: <a
					href="http://webdeveloperbareilly.in/blog/bootstrap/bootstrap-thumbnail-like-material-design-cards.html">Beautiful
					Bootstrap Thumbnail like Material Design Cards</a>
			</div>
		</div>

		<div class="container-fluid cards-row">
			<div class="container">
				<div class="row">

					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="img/auction.jpg"
								alt="">
							<div class="caption">
								<h3>Bootstrap Thumbnail</h3>
								<p class="card-description">
									<strong>Bootstrap Thumbnail</strong> Customization Example.
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
								<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
									30000원</div>
							</div>
								<p>
									<a href="#" class="btn btn-primary" role="button">상세정보</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="img/auction.jpg"
								alt="">								
							<div class="caption">
								<h3>Bootstrap Cards Design</h3>
								<p class="card-description">
									<strong>Bootstrap Thumbnail</strong> Customization Example.
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
								<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 10%;">
									7000원</div>
							</div>
								<p>
									<a href="#" class="btn btn-primary" role="button">상세정보</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="img/auction.jpg"
								alt="">
							<div class="caption">
								<h3>Material Design Cards</h3>
								<p class="card-description">
									<strong>Bootstrap Thumbnail</strong> Customization Example.
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
								<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
									비공개</div>
							</div>
								<p>
									<a href="#" class="btn btn-primary" role="button">상세정보</a>
								</p>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>