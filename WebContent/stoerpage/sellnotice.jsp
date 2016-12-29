<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript " src="jquery/jquery-3.1.1.min.js">

</script>

<script type="text/javascript">



$(function () {

    $(".tab_content").hide();
    $(".tab_content:first").show();
	
    $("ul.tabs li").click(function () {
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
*{
margin: 0;
padding: 0;

}


body{
background:gray;
}







ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;

    width: 50%;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:82px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}

ul.tabs li:HOVER{
background-color: #584EDF;
color: white;
}




.tab_container {
    border: 1px solid #eee;
    border-top: none;
    clear: both;
    float: left;
    width: 90%;
    background: #FFFFFF;
    border-radius:10px;
}
.tab_content {
	margin-top:20px;
    padding: 5px;
    font-size: 12px;
    display: none;
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none
}
;
 #container {
    width: 90%;
    margin: 0 auto;
    
    
}

.tab_container  .thumbnail:HOVER{
border: 1px solid black;

}
</style>

</head>
<body>


<div style="background:#D4DCEB ; min-height: 2000px;box-shadow :5px 5px 5px 0px black; border-radius:30px">
	<jsp:include page="../header.jsp"></jsp:include>


	
		<div style="height: 500px; width:100%;"class="carousel fade-carousel slide" data-ride="carousel"
			data-interval="4000" id="bs-carousel" >
			<!-- Overlay -->
			<div class="overlay"></div>

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#bs-carousel" data-slide-to="1"></li>
				<li data-target="#bs-carousel" data-slide-to="2"></li>
				<li data-target="#bs-carousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item slides active"  style="height: 500px; width:100%">
					<div class="slide-1"></div>
					<div class="hero">
						<hgroup>
						<h1>운동화</h1>
						<h3>Get start your next awesome project</h3>
						</hgroup>
						<button class="btn btn-hero btn-lg" role="button">See all
							features</button>
					</div>
				</div>
				<div class="item slides"  style="height: 500px; width:100%">
					<div class="slide-2"></div>
					<div class="hero">
						<hgroup>
						<h1>특가</h1>
						<h3>Get start your next awesome project</h3>
						</hgroup>
						<button class="btn btn-hero btn-lg" role="button">See all
							features</button>
					</div>
				</div>
				<div class="item slides"  style="height: 500px; width:100%" >
					<div class ="slide-3"></div>
					<div class="hero">
						<hgroup>
						<h1>시계</h1>
						<h3>Get start your next awesome project</h3>
						</hgroup>
						<button class="btn btn-hero btn-lg" role="button">See all
							features</button>
					</div>
				</div>
				
				<div class="item slides"  style="height: 500px; width:100%" >
					<div class ="slide-4"></div>
					<div class="hero">
						<hgroup>
						<h1>시계</h1>
						<h3>Get start your next awesome project</h3>
						</hgroup>
						<button class="btn btn-hero btn-lg" role="button">See all
							features</button>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
<!-- 		<div>
<ul style="margin-left: 25%">
<li style="float: left;"><a href="http://www.g9.co.kr/Display/Exhibition/579"><img src="http://image.g9.co.kr/i/2016/11/10/f6b92f4c0de049cf.jpg" alt="브랜드관"></a></li>
				<li style="float: left;"><a href="http://www.g9.co.kr/Display/Exhibition/788"><img src="http://image.g9.co.kr/i/2016/11/10/61a923fc80514c86.jpg" alt="가구무료배송"></a></li>
				<li style="float: left;"><a href="http://www.g9.co.kr/Display/Exhibition/789"><img src="http://image.g9.co.kr/i/2016/11/10/b281b2315dfd43d9.jpg" alt="가전무료배송"></a></li>
				<li style="float: left;"><a href="http://www.g9.co.kr/Display/Exhibition/653"><img src="http://image.g9.co.kr/i/2016/11/10/8984649fab404dcb.jpg" alt="스포츠전문관"></a></li>
				<li style="float: left;"><a href="http://www.g9.co.kr/Display/Exhibition/274"><img src="http://image.g9.co.kr/i/2016/11/10/6ccb3ffd11ab498a.jpg" alt="지구여행"></a></li>
				<li style="float: left;"><a href="http://www.g9.co.kr/Display/Exhibition/755"><img src="http://image.g9.co.kr/i/2016/11/10/8f41d76a4f8b4725.jpg" alt="지구책방"></a></li>

</ul>
</div> -->







<div style="clear: both; height: 50px"></div>









<div id="container"  style="margin-left: 10%">
    <ul class="tabs"   style="margin-left: 35%"  >
        <li class="active" rel="tab1">가전</li>
        <li rel="tab2">생활</li>
        <li rel="tab3">도구</li>
    </ul>
    <div style="height: 30px"></div>
    
    <div class="tab_container">
        <div id="tab1" class="tab_content">
         

					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>남녀 플리스 코트</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
						<a href="sell_detail.cw" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>

<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>남녀 플리스 코트</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>
					
					
					
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>남녀 플리스 코트</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>

<div style="clear: both;"></div>
         
        </div>
        <!-- #tab1 -->
        <div id="tab2" class="tab_content">
       

					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>신발</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>

<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>여행가방</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>
					
					
					
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>여행가방</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					

<div style="clear: both;"></div>
</div>
        <!-- #tab2 -->
        <div id="tab3" class="tab_content">
        

					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>신발</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>

<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>신발</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>
					
					
					
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img
								src="../img/invest.jpg"
								alt="">
								
							<div class="caption">
							<hr>
								<h3>남녀 플리스 코트</h3>
								<p class="card-description">
									<h2><strong>6,800</strong></h2> 
									Here are customized <strong>bootstrap cards</strong>. We just
									apply some box shadow and remove border radius.
								</p>
						
								<p>
									<a href="#" class="btn btn-primary" role="button">구매</a>
								</p>
							</div>
						</div>
					</div>


        </div>
        <!-- #tab3 -->
   		
   		
   		
   		
   		 </div>
    
    
    
    
    
    <!-- .tab_container -->
</div>
<!-- #container -->





<div style="clear: both;"></div>










</div>

	<jsp:include page="../footer.jsp" ></jsp:include>
</body>
</html>