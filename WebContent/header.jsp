<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">

#icon{font-family: Wingdings}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid" style="box-shadow: 0px 3px 10px black">
			<!-- 	  <div class="container-fluid" style="background-color: #4386FC;"> -->
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">&nbsp;&nbsp;<span id="icon">''<img src="img/logo.png" width="50px" style="margin-top: -10px"></span></a>
				
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="navbar-collapse collapse" id="navbar-collapse-1">
				<ul class="nav navbar-nav">

	
							<li class="dropdown-2"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Intro<span style="margin-left: 10px"
							class="glyphicon glyphicon-user pull-right"></span></a>
						<ul class="dropdown-menu" style="background: green;">
							<li><a href="sellnotice.cw">게시판 <span
									class="glyphicon glyphicon-cog pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">User stats <span
									class="glyphicon glyphicon-stats pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">Messages <span class="badge pull-right">
										42 </span></a></li>
							<li class="divider"></li>
							<li><a href="#">Favourites Snippets <span
									class="glyphicon glyphicon-heart pull-right"></span></a></li>
							
							
						</ul></li>



					<li class="dropdown-1"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">투자<span
							class="glyphicon glyphicon-heart" style="margin-left: 10px"></span></a>
						<ul class="dropdown-menu">
						
						<!-- ##################################################################### -->
							<li><a href="board.investf">게시판 <span
									class="glyphicon glyphicon-cog pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">User stats <span
									class="glyphicon glyphicon-stats pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">Messages <span class="badge pull-right">
										42 </span></a></li>
							<li class="divider"></li>
							<li><a href="#">Favourites Snippets <span
									class="glyphicon glyphicon-heart pull-right"></span></a></li>							
						</ul></li>

					<li class="dropdown-2"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">판매<span style="margin-left: 10px"
							class="glyphicon glyphicon-euro"></span></a>
						<ul class="dropdown-menu" style="background: orange;">
							<li><a href="sellnotice.cw">게시판 <span
									class="glyphicon glyphicon-cog pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">User stats <span
									class="glyphicon glyphicon-stats pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">Messages <span class="badge pull-right">
										42 </span></a></li>
							<li class="divider"></li>
							<li><a href="#">Favourites Snippets <span
									class="glyphicon glyphicon-heart pull-right"></span></a></li>
							
							
						</ul></li>
						
						
							<li class="dropdown-2"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">문의 
						<span style="margin-left: 10px"
							class="glyphicon glyphicon-asterisk"></span></a>
						<ul class="dropdown-menu">
							<li><a href="sellnotice.cw">게시판 <span
									class="glyphicon glyphicon-cog pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">User stats <span
									class="glyphicon glyphicon-stats pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="#">Messages <span class="badge pull-right">
										42 </span></a></li>
							<li class="divider"></li>
							<li><a href="#">Favourites Snippets <span
									class="glyphicon glyphicon-heart pull-right"></span></a></li>
							
							
						</ul></li>


				</ul>
			<!-- 	<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="내용입력">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form> -->
				<ul class="nav navbar-nav navbar-right">

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
						<ul id="login-dp" class="dropdown-menu">
							<li>
								<div class="row">
									<div class="col-md-12">
										Login via
										<div class="social-buttons">
											<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i>
												Facebook</a> <a href="#" class="btn btn-tw"><i
												class="fa fa-twitter"></i> Twitter</a>
										</div>
										or
										<form class="form" role="form" method="post" action="login"
											accept-charset="UTF-8" id="login-nav">
											<div class="form-group">
												<label class="sr-only" for="exampleInputEmail2">Email
													address</label> <input type="email" class="form-control"
													id="exampleInputEmail2" placeholder="Email address"
													required>
											</div>
											<div class="form-group">
												<label class="sr-only" for="exampleInputPassword2">Password</label>
												<input type="password" class="form-control"
													id="exampleInputPassword2" placeholder="Password" required>
												<div class="help-block text-right">
													<a href="">Forget the password ?</a>
												</div>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-primary btn-block">Sign
													in</button>
											</div>
											<div class="checkbox">
												<label> <input type="checkbox"> keep me
													logged-in
												</label>
											</div>
										</form>
									</div>
									<div class="bottom text-center">
										New here ? <a href="#"><b>Join Us</b></a>
									</div>
								</div>
							</li>
						</ul></li>
					<li><a href="#">이용안내</a></li>
					<li><a href="mypage/myPage.jsp">My Page</a></li>
					<li><button type="button" class="btn btn-primary" onclick=""
							style="margin: 8px">프로젝트 신청</button></li>
							
							
					<li><button class="btn btn-sm btn-success"  onclick="" style="margin-top: 10px ">
							<i class="fa fa-flag fa-2x pull-left"></i> visitor 56
						</button></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>

	</div>
	<br />
	<br />
</body>
</html>