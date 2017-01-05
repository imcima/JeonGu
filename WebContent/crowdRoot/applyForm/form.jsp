<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Application Wizard Bootstrap v3.x</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--Form Wizard용----------->
<link href="/JeonGu/crowdRoot/applyForm/bootstrap/bootstrap.min.css" rel="stylesheet" />
<link href="/JeonGu/crowdRoot/applyForm/src/bootstrap-wizard.css" rel="stylesheet" />
<link href="/JeonGu/crowdRoot/applyForm/chosen/chosen.css" rel="stylesheet" />
<link href="/JeonGu/crowdRoot/applyForm/css/custom.css" rel="stylesheet"/>
<!-----------Form Wizard용-->
<script type="text/javascript" src="WebContent/js/jquery-1.3.2.js"></script>

<style type="text/css">
	.wizard-modal p {
		margin: 0 0 10px;
		padding: 0;
	}

	#wizard-ns-detail-servers, .wizard-additional-servers {
		font-size: 12px;
		margin-top: 10px;
		margin-left: 15px;
	}
	#wizard-ns-detail-servers > li, .wizard-additional-servers li {
		line-height: 20px;
		list-style-type: none;
	}
	#wizard-ns-detail-servers > li > img {
		padding-right: 5px;
	}

	.wizard-modal .chzn-container .chzn-results {
		max-height: 150px;
	}
	.wizard-addl-subsection {
		margin-bottom: 40px;
	}
	.create-server-agent-key {
		margin-left: 15px; 
		width: 90%;
	}
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="js/html5shiv-3.7.0.js"></script>
<script src="js/respond-1.3.0.min.js"></script>
<![endif]-->
<script type="text/javascript">

</script>
	
	</head>
<body style="padding:30px; background-color: white;">
	<div id="wrap">			
	<div id="section1"  class="section">			
		<div class="inner-wrap">
		<br/>
			<h1>
				<strong>투자</strong>와 <strong>리워드</strong><br />그렇게 어렵지 않습니다.			
			</h1>
			<p class="sub-text">기업의 새로운 도약을 위한 자금을 필요로 하신 분들은 투자 프로젝트로 시작,<br/>
				제품이나 서비스를 새롭게 개발하는데 후원이 필요하신 분들은<br/> 리워드 프로젝트로 시작하세요</p>		
		</div>
		<div class="make-project-guide section1">
			<ul class="project-info">
				<li class="item1">
				<img alt="" src="/JeonGu/crowdRoot/applyForm/img/invest.png">
					<div>
						<dl>				
							<dt>투자 프로젝트</dt>
							<dd>
								투자는 펀딩에 대한 보상으로 서포터에게 기업의 <strong>‘주식이나 채권’</strong>을 발행합니다.
							</dd>				
						</dl>
					</div>
				</li>
				<li class="item2">
				<img alt="" src="/JeonGu/crowdRoot/applyForm/img/reward.png">
					<div>
						<dl>
							<dt>리워드 프로젝트</dt>
							<dd>
								리워드는 펀딩에 대한 감사의 표시로 서포터에게 <strong>‘제품이나  서비스’</strong>를 선물합니다.
							</dd>
						</dl>
					</div>
				</li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>	
	
	<div class="make-project-guide section" id="section2">
		<div class="inner-wrap">
			<h1>
				누구나,<br />
				<strong>메이커가 될 수 있습니다.</strong>
			</h1>
			<p class="sub-text">JeonGu의 메이커들은 특별한 사람들이 아닙니다. 집단지성의 힘을 믿는 평범한
				사람들이죠. 당신의 열정으로 언제든지 메이커가 될 수 있습니다.</p>
			
		</div>
	
		<div class="make-project-maker">
			<ul>
				<li><img
					src="/JeonGu/crowdRoot/applyForm/img/makeproject_maker_mohenic.png"
					alt="JeonGu는 투자유치뿐만 아니라 든든한 지지자 모팸족과 소통하게 된 기회였습니다.모헤닉게라지스 김태성 대표" /></li>
				<li><img
					src="/JeonGu/crowdRoot/applyForm/img/makeproject_maker_ignis.png"
					alt="크라우드펀딩은 런칭 전 시장성을 확인할 수 있는 좋은 기회였죠. 이그니스 박찬호 대표" /></li>
			</ul>
		</div>
	
		<div class="clear"></div>		
		<br/>
	</div>
	<div id="section3"  class="section">
		<div class="inner-wrap">
			<h1>
				JeonGu를<br />
				<strong>선택해야 하는 이유.</strong>
			</h1>
			<br/><br/><br/>
			<p class="sub-text">JeonGu의 메이커들은 특별한 사람들이 아닙니다. 집단지성의 힘을 믿는 평범한
				사람들이죠. 당신의 열정으로 언제든지 메이커가 될 수 있습니다.</p>
				<br/><br/><br/><br/>
			<ul id="project_reason">
				<li>					
						<div id="item1">
							<img alt="" src="/JeonGu/crowdRoot/applyForm/img/funding.png">
						</div>
					
						<div id="item2">
							<img alt="" src="/JeonGu/crowdRoot/applyForm/img/marketing.png">
						</div>
					
					
						<div id="item3">
							<img alt="" src="/JeonGu/crowdRoot/applyForm/img/guide.png">
						</div>					
				</li>
				<li>
					<div id="item4">
						<img alt="" src="/JeonGu/crowdRoot/applyForm/img/incentive.png">
					</div>
					
					<div id="item5">
						<img alt="" src="/JeonGu/crowdRoot/applyForm/img/chance.png">
					</div>			
				
					<div id="item6">
						<img alt="" src="/JeonGu/crowdRoot/applyForm/img/multi.png">
					</div>
				</li>
				
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	
	<div id="section4" class="section">
		<div class="inner-wrap">
			<h1>
				<strong>크라우드펀딩의 첫걸음,<br />
				JeonGu가 함께하겠습니다.</strong>
			</h1>
			<br/><br/><br/>
			<p class="sub-text1">메이커님의 스토리에 JeonGu의 전문성을 더하여 누구나 쉽게 프로젝트를 개설할 수 있습니다. 
			전문적인 JeonGu의 가이드를 따라 진행하면 간편하게 프로젝트가 완성됩니다.</p>
				<br/><br/><br/>
				<p class="sub-text2">투자 개설 및 진행 과정</p>
				<br/>
				<p class="sub-text1">신청 → JeonGu 심사 → 계약 체결 → 투자 유치 준비 → 투자자 모집 → 투자 완료 ( 증권 발행 및 배정 )</p>
				<br/><br/><br/>
				<p class="sub-text2">리워드 개설 및 진행 과정</p>
				<br/>
				<p class="sub-text1">신청 → JeonGu 심사 → 프로젝트 만들기 → 펀딩 시작 → 펀딩 완료</p>				
		</div>	
	</div>
	<div id="section5"  class="section">
		<div class="inner-wrap">
			<h1>
				<strong>프로젝트 신청 전<br />
				꼭 알아야할 5가지.</strong>
			</h1>
			<ul class="qna">
				<li>
					<div>
						<h4>투자 프로젝트</h4>
						<a>1. 투자형 크라우드펀딩의진행 자격 요건이 있나요?</a>
						<div class="answer" id="answer_1">
						창업 7년 이내의 비상장법인 또는 7년을 초과하였더라도 벤처기업, 이노비즈기업이라면 투자형 크라우드펀딩을 통해 투자 유치가 가능합니다.
						신기술개발, 문화콘텐츠와 같은 프로젝트성 사업도 크라우드펀딩을 통해 투자를 받을 수 있습니다.
						단, 신생/창업 기업을 지원하기 위한 제도이기 때문에 일부 업종의 경우 진행이 제한됩니다. (골프장 및 스키장 운영업, 기타 겜블링 및 베팅업 등)
						</div>	
						<a>2. 최대 얼마까지 투자를 받을 수 있나요?</a>
						<div class="answer" id="answer_1">
						투자형 크라우드펀딩을 통해 모집할 수 있는 금액은 연간 최대 7억원입니다.
						과거 1년간 증권신고서를 제출하고 모집한 금액이나 소액 공모 금액이 있다면, 7억원에 포함되어 연간 한도가 결정됩니다. 
						</div>	
						<a>3. 투자 유치까지 얼마나 걸리나요?</a>
						<div class="answer" id="answer_1">
						평균적으로 모집신청서 작성 이후 약 3~4주 정도 투자 준비를 하게 됩니다.
						투자 준비 후 온라인을 통해 투자자를 모집하는 기간은 평균적으로 한달 내외이며,
						투자 유치 성공 15일 후에 주급 납입이 이루어집니다. 
						</div>	
						<a>4. 투자를 받기 위해 어떤 자료를 준비해야 하나요?</a>
						<div class="answer" id="answer_1">
						투자형 크라우드펀딩으로 투자 유치를 희망하신다면, 바로 신청서를 작성하여 제출해주세요.
						신청서와 함께 '사업자등록증', '법인등기부등본', 그리고 '사업계획서'를 첨부해주세요.
						신청서 제출 후 5영업일 내로 진행 가능 여부와 후속 절차에 대한 안내를 드립니다.
						</div>	
						<a>5. 투자 유치를 위한 증권 발행 정보 책정 기준은?</a>
						<div class="answer" id="answer_1">
						투자형 크라우드펀딩으로 투자를 유치할 때에는 일반적으로 주식, 채권을 발행합니다.
						발행하는 증권에 대한 세부 정보는 기업이 결정하여 진행합니다.
						</div>					
					</div>
				</li>
				<li>
					<div>
						<h4>리워드 프로젝트</h4>
						<a class="qna1">1. JeonGu 메이커가 되려면 어떻게 해야 하나요?</a>
						<div class="answer1" id="answer_1">
						JeonGu에서 성공했던 프로젝트를 찾아보거나 JeonGu 스쿨에 참석해보세요.
						사전 준비가 마무리되었다면 [펀딩 진행가능여부]나 [바로 등록하기]를 통해 프로젝트 개설 신청해주세요.
						</div>						
						<a>2. JeonGu 프로젝트 심사 기준이 궁급합니다.</a>
						<div class="answer" id="answer_1">
						프로젝트의 실현 가능성, 리워드, 구체적인 실행 계획이 중요합니다.
						자세한 심사기준을 [이용안내]에서 확인해보시고 준비 정도를 검토해보세요.
						</div>	
						<a>3. 프로젝트 진행 전 상담을 받을 수 있나요?</a>
						<div class="answer" id="answer_1">
						[펀딩 진행가능여부]를 통해 문의해주시면, 심사 후 3영업일 이내 이메일로 회신 드립니다.
						심사 후에는 JeonGu 담당 매니저가 공개까지 지원해드리니 상세한 이야기는 그 때도 충분히 나누실 수 있습니다.
						</div>	
						<a>4. 프로젝트 오픈까지 얼마나 걸리나요?</a>
						<div class="answer" id="answer_1">
						프로젝트 준비 정도에 따라 차이가 있지만 평균적으로 7영업일이 소요됩니다.
						오늘부터 프로젝트 개설 및 스토리 작성을 시작 한다고 가정할 경우 7일째 되는 날 프로젝트를 오픈하게 됩니다.
						스토리 피드백을 빠르게 수정 반영 해주실 수록 앞당겨질 수 있습니다.
						· 준비 기간: 최단 3 일 - 10일 (주말 공휴일 제외) 
						</div>	
						<a>5. 이용수수료는 어떻게 되나요?</a>
						<div class="answer" id="answer_1">
						JeonGu 수수료에는 총 3가지 방식이 있습니다.
						Type A. 100% 달성 시 최종 모금액을 수령받는 경우<br/>
						1. 고정 수수료 : 7% (VAT별도)<br/>
						2. 변동 수수료 : 지지서명 수에 따라 수수료가 달라집니다.<br/><br/>
						
						Type B. 달성여부와 상관없이 모인만큼 수령 받는 경우 - 성공 시 : 10% (VAT별도) - 실패 시 : 15% (VAT 별도)
						 * 위 수수료에 부과세와 PG수수료 (3.3%)가 추가로 부과 됩니다.<br/><br/>
						
						자세한 수수료 정책은 홈페이지 하단 [수수료 안내]에서 확인해주세요.
						</div>					
					</div>
				</li>
			</ul>
			<div class="clear"></div>
			<br/><br/><br/>
<!-- 				<button id="open-wizard" class="btn open-wizard"> -->
<!-- 					<div>지금 프로젝트 신청하기</div> -->
<!-- 				</button> -->
				<button id="open-form" class="btn open-wizard" onclick="location.href='newForm.apply'">
					<div>지금 프로젝트 신청하기</div>
				</button>
			</div>
	</div>	
	
	
	<div class="wizard" id="satellite-wizard" data-title="펀딩 신청하기">
			
			<!-- Step 1 Name & FQDN -->
			<div class="wizard-card" data-cardname="name">
				<h3>펀딩 소개</h3>

				<div class="wizard-input-section">
					<p>
						크라우드 펀딩 이름
					</p>
					<div class="form-group">
					
						<div class="col-sm-6">
							<input type="text" class="form-control" id="label" name="label" placeholder="croname" data-validate="validateServerLabel">
						</div>
					</div>
				</div>

				<div class="wizard-input-section">
					<p>
						펀딩 타이틀
					</p>

					<div class="form-group">
						<div class="col-sm-12">
							<div class="input-group">
								<input type="text" class="form-control" id="fqdn" name="fqdn" placeholder="title" data-validate="validateFQDN" size="60"/>
								
							</div>
						</div>
					</div>
				</div>		
				<div class="wizard-input-section">
					<p>
						신청자 이름
					</p>

					<div class="form-group">
						<div class="col-sm-12">
							<div class="input-group">
								<input type="text" class="form-control" id="fqdn" name="fqdn" placeholder="sellername" data-validate="validateFQDN" size="60"/>
								
							</div>
						</div>
					</div>
				</div>						
			</div>
			
			
			<div class="wizard-card wizard-card-overlay" data-cardname="location">
				<h3>상품 카테고리</h3>

				<div class="wizard-input-section">
					<p>
						기획하신 상품의 카테고리를 선택하세요
					</p>

					<select name="location" data-placeholder="Monitor nodes" style="width:350px;" class="chzn-select form-control">
						<option value=""></option>
						<optgroup label="의류 잡화">
							<option>생활용품</option>
							<option selected>가구</option>
							<option>주방용품</option>
							<option>가방</option>
							<option>옷</option>
							<option>신발</option>
						</optgroup>

						<optgroup label="비지니스">
							<option>O2O 사업모델</option>
							<option>B2B 사업모델</option>
							<option>일반 음식점</option>
							<option>전문 음식점</option>
							<option>서비스업</option>
						</optgroup>

						<optgroup label="기타">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
						</optgroup>

					</select>

				</div>
			</div>
				

			<div class="wizard-card" data-cardname="group">
				<h3>펀딩 목표 금액</h3>

				<div class="wizard-input-section">
					<p>
						목표 금액이 얼마인가요?
					</p>

					<input type="number" class="form-control" size="20" id="goalmoney" placeholder="goalmoney">
				</div>
			</div>

			<div class="wizard-card wizard-card-overlay" data-cardname="services">
				<h3>펀딩 기간 설정</h3>
				
				<p>펀딩 시작 날짜</p>
				<div class="wizard-input-section">					
					<input type="date" class="form-control"/>
				</div>
				<p>펀딩 마감 날짜</p>
				<div class="wizard-input-section">					
					<input type="date" class="form-control"/>
				</div>
			</div>	

			<div class="wizard-card wizard-card-overlay" data-cardname="services">
				<h3>상세 내용</h3>

				<div class="wizard-input-section">
					<p><a href="/JeonGu/daumeditor/crowdEditor.html" target="_blank"> 소개 페이지를 작성해 주세요.</a></p>
					<div class="form-group">				
						<%--<%=request.getParameter("daumeditor")%> --%>
						
						<form name="txtform">
						<textarea name="txtarea" cols="50" rows="20"></textarea>
						</form>									
					</div>
				<div style="clear: both;"></div>
				</div>
			
			<div class="wizard-card">
				<h3>상품 등록</h3>

				<div class="wizard-input-section">
					<p>The  allows
						you to monitor local resources (disk usage, cpu usage, etc).
						If you would like to set that up now, please download
						and follow the install instructions.
					</p>

					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Download<span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li><a href="#">.rpm</a></li>
							<li><a href="#">.deb</a></li>
							<li><a href="#">.tar.gz</a></li>
						</ul>
					</div>
				</div>


				<div class="wizard-input-section">
					<p>You will be given a server key after you install the Agent
						on <strong class="create-server-name"></strong>.
						If you know your server key now, please enter it
						below.</p>

					<div class="form-group">
						<input type="text" class="create-server-agent-key form-control" placeholder="Server key (optional)" data-validate="">
					</div>
				</div>


				
	
				<div class="wizard-failure">
					<div class="alert alert-error">
						<strong>There was a problem</strong> submitting the form.
						Please try again in a minute.
					</div>
				</div>
	
				<div class="wizard-success">
					<div class="alert alert-success">
						<span class="create-server-name"></span><strong>상품이 성공적으로 등록되었습니다.</strong>
					</div>
	
					<a class="btn btn-default create-another-server">또 다른 상품 등록하기</a>
					<span style="padding:0 10px"></span>
					<a class="btn btn-success im-done">끝내기</a>
				</div>
			</div>
		</div>


		<script src="/JeonGu/applyForm/js/jquery-2.0.3.min.js" type="text/javascript"></script>
		<script src="/JeonGu/applyForm/chosen/chosen.jquery.js"></script>
		<script src="/JeonGu/applyForm/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="/JeonGu/applyForm/js/prettify.js" type="text/javascript"></script>
		<script src="/JeonGu/applyForm/src/bootstrap-wizard.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$.fn.wizard.logging = true;
				var wizard = $('#satellite-wizard').wizard({
					keyboard : false,
// 					contentHeight : 400,
// 					contentWidth : 700,
					contentHeight : 550,
 					contentWidth : 800,
					backdrop: 'static'
				});
				
				$(".chzn-select").chosen();

				$('#fqdn').on('input', function() {
					if ($(this).val().length != 0) {
						$('#ip').val('').attr('disabled', 'disabled');
						$('#fqdn, #ip').parents('.form-group').removeClass('has-error has-success');
					} else {
						$('#ip').val('').removeAttr('disabled');
					}
				});

				var pattern = /\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/;
				x = 46;

				$('#ip').on('input', function() {
					if ($(this).val().length != 0) {
						$('#fqdn').val('').attr('disabled', 'disabled');
					} else {
						$('#fqdn').val('').removeAttr('disabled');
					}
				}).keypress(function(e) {
					if (e.which != 8 && e.which != 0 && e.which != x && (e.which < 48 || e.which > 57)) {
						console.log(e.which);
						return false;
					}
				}).keyup(function() {
					var $this = $(this);
					if (!pattern.test($this.val())) {
						//$('#validate_ip').text('Not Valid IP');
						console.log('Not Valid IP');
						$this.parents('.form-group').removeClass('has-error has-success').addClass('has-error');
						while ($this.val().indexOf("..") !== -1) {
							$this.val($this.val().replace('..', '.'));
						}
						x = 46;
					} else {
						x = 0;
						var lastChar = $this.val().substr($this.val().length - 1);
						if (lastChar == '.') {
							$this.val($this.val().slice(0, -1));
						}
						var ip = $this.val().split('.');
						if (ip.length == 4) {
							//$('#validate_ip').text('Valid IP');
							console.log('Valid IP');
							$this.parents('.form-group').removeClass('has-error').addClass('has-success');
						}
					}
				});

				wizard.on('closed', function() {
					wizard.reset();
				});

				wizard.on("reset", function() {
					wizard.modal.find(':input').val('').removeAttr('disabled');
					wizard.modal.find('.form-group').removeClass('has-error').removeClass('has-succes');
					wizard.modal.find('#fqdn').data('is-valid', 0).data('lookup', 0);
				});

				wizard.on("submit", function(wizard) {
					var submit = {
						"hostname": $("#new-server-fqdn").val()
					};
					
					this.log('seralize()');
					this.log(this.serialize());
					this.log('serializeArray()');
					this.log(this.serializeArray());
			
					setTimeout(function() {
						wizard.trigger("success");
						wizard.hideButtons();
						wizard._submitting = false;
						wizard.showSubmitCard("success");
						wizard.updateProgressBar(0);
					}, 2000);
				});
				
				wizard.el.find(".wizard-success .im-done").click(function() {
					wizard.hide();
					setTimeout(function() {
						wizard.reset();	
					}, 250);
					
				});
			
				wizard.el.find(".wizard-success .create-another-server").click(function() {
					wizard.reset();
				});
			
				$(".wizard-group-list").click(function() {
					alert("Disabled for demo.");
				});

				$('#open-wizard').click(function(e) {
					e.preventDefault();
					wizard.show();
				});
			});

			function validateServerLabel(el) {
				var name = el.val();
				var retValue = {};

				if (name == "") {
// 					retValue.status = false;
// 					retValue.msg = "Please enter a label";
				} else {
					retValue.status = true;
				}

				return retValue;
			};

			function validateFQDN(el) {
				var $this = $(el);
				var retValue = {};

				if ($this.is(':disabled')) {
					// FQDN Disabled
					retValue.status = true;
				} else {
					if ($this.data('lookup') === 0) {
// 						retValue.status = false;
// 						retValue.msg = "Preform lookup first";
					} else {
						if ($this.data('is-valid') === 0) {
							retValue.status = false;
							retValue.msg = "Lookup Failed";
						} else {
							retValue.status = true;
						}
					}
				}

				return retValue;
			};

			function lookup() {
				// Normally a ajax call to the server to preform a lookup
				$('#fqdn').data('lookup', 1);
				$('#fqdn').data('is-valid', 1);
				$('#ip').val('127.0.0.1');
			};
		</script>
		</div>
			
		
	</body>
</html>