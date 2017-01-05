<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
<link href="/JeonGu/crowdRoot/applyForm/css/custom.css" rel="stylesheet" />
<!--다음 에디터용----------->
<link rel="stylesheet" href="/JeonGu/crowdRoot/daumeditor/css/editor.css"
	type="text/css" charset="utf-8" />
<script src="/JeonGu/crowdRoot/daumeditor/js/editor_loader.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"
	src="/JeonGu/jquery/jquery-3.1.1.min.js"></script>
<!-----------다음 에디터용-->
<!--Form Wizard용----------->
<link href="/JeonGu/crowdRoot/applyForm/bootstrap/bootstrap.min.css" rel="stylesheet" />
<!-- <link href="/JeonGu/applyForm/src/bootstrap-wizard.css" rel="stylesheet" /> -->
<!-- <link href="/JeonGu/applyForm/chosen/chosen.css" rel="stylesheet" /> -->
<link href="/JeonGu/crowdRoot/applyForm/css/custom.css" rel="stylesheet"/>
<!-----------Form Wizard용-->
<script type="text/javascript">
	$(function() {
		$.ajax({
					url : "/JeonGu/crowdRoot/daumeditor/editor_frame.html",
					success : function(data) {
						$("#editor_frame").html(data);
						// 에디터UI load
						var config = {
							/* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
							txHost : '',
							/* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
							txPath : '',
							/* 수정필요없음. */
							txService : 'sample',
							/* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
							txProject : 'sample',
							/* 대부분의 경우에 빈문자열 */
							initializedId : "",
							/* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
							wrapper : "tx_trex_container",
							/* 등록하기 위한 Form 이름 */
							form : "frm",
							/*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
							txIconPath : "/JeonGu/crowdRoot/daumeditor/images/icon/editor/",
							/*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
							txDecoPath : "/JeonGu/crowdRoot/daumeditor/images/deco/contents/",
							canvas : {
								styles : {
									/* 기본 글자색 */
									color : "#123456",
									/* 기본 글자체 */
									fontFamily : "굴림",
									/* 기본 글자크기 */
									fontSize : "10pt",
									/*기본 배경색 */
									backgroundColor : "#fff",
									/*기본 줄간격 */
									lineHeight : "1.5",
									/* 위지윅 영역의 여백 */
									padding : "8px"
								},
								showGuideArea : false
							},
							events : {
								preventUnload : false
							},
							sidebar : {
								attachbox : {
									show : true,
									confirmForDeleteAll : true
								}
							},
							size : {
								/* 지정된 본문영역의 넓이가 있을 경우에 설정 */
								contentWidth : 700
							}
						};

						//에디터내에 환경설정 적용하기
						new Editor(config);
					}
				});

		//form submit 버튼 클릭
		$("#save_button").click(function() {
			//다음에디터가 포함된 form submit            
			Editor.save();
// 			document.frm.submit();

		})
	})

	//Editor.save() 호출 한 다음에 validation 검증을 위한 함수 
	//validation 체크해줄 입력폼들을 이 함수에 추가 지정해줍니다.
	function validForm(editor) {
		var validator = new Trex.Validator();
		var content = editor.getContent();
		if (!validator.exists(content)) {
			alert('내용을 입력하세요');
			document.getElementById("tx_canvas_wysiwyg").focus();
			return false;
		}
		return true;
	}

	//validForm 함수까지 true값을 받으면 이어서 form submit을 시켜주는  setForm함수
	function setForm(editor) {
		var content = editor.getContent();
		$("#content").val(content)
		return true;
	}
</script>
</head>
<body style="padding: 30px; background-color: white;">
	<div id="wrap">
		<div id="section1" class="section">
			<!-- 에디터 시작 -->
			
			<form name="frm" id="frm" action="addCrowd.apply" method="post" accept-charset="utf-8">
				<!-- ------------------------------ -->
				<div class="innerWrap">
				<div class="wizard-card" data-cardname="name">
				<h3>펀딩 소개</h3>

				<div class="wizard-input-section">
					<div class="col-sm-12">
						<p>크라우드 펀딩 이름</p>
						<div class="form-group">
						 	<div class="input-group">
								<input type="text" class="form-control" id="croname" name="croname" placeholder="croname" data-validate="validateServerLabel"  required="required">
							</div>
						</div>
					</div>
				</div>
				
				<div class="wizard-input-section">
					<div class="col-sm-12">
						<p>펀딩 타이틀</p>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group">
									<input type="text" class="form-control" id="title" name="title" placeholder="title"  required="required"/>
								</div>
							</div>
						</div>
					</div>
				</div>		
				<div class="wizard-input-section">
					<div class="col-sm-12">
						<p>신청자 이름</p>
						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control" id="sellername" name="sellername" placeholder="sellername"  required="required"/>								
							</div>
						</div>
					</div>
				</div>
										
			</div>
			
			</div>
			<div class="innerWrap">
			<div class="wizard-card wizard-card-overlay" data-cardname="location">
				<h3>상품 카테고리</h3>
				<div class="wizard-input-section">
					<div class="col-sm-12">
						<p>기획하신 상품의 카테고리를 선택하세요</p>
						<select name="cateno" data-placeholder="Monitor nodes" style="width:350px;" class="chzn-select form-control">
							<option value=""></option>
							<optgroup label="의류 잡화">
								<option value="101">생활용품</option>
								<option value="102" selected>가구</option>
								<option value="103">주방용품</option>
								<option value="104">가방</option>
								<option value="105">옷</option>
								<option value="106">신발</option>
							</optgroup>
	
							<optgroup label="비지니스">
								<option value="201">O2O 사업모델</option>
								<option value="202">B2B 사업모델</option>
								<option value="203">일반 음식점</option>
								<option value="204">전문 음식점</option>
								<option value="205">서비스업</option>
							</optgroup>
	
							<optgroup label="기타">
								<option value="301">1</option>
								<option value="302">2</option>
								<option value="303">3</option>
								<option value="304">4</option>
								<option value="305">5</option>
								<option value="306">6</option>
								<option value="307">7</option>
							</optgroup>	
						</select>
					</div>
				</div>
			</div><br/><br/><br/>
				
			<div class="wizard-input-section">
				<div class="wizard-card" data-cardname="group">
					<h3>펀딩 목표 금액</h3>
					<div class="wizard-input-section">
						<div class="col-sm-12">
							<div class="form-group">
								<div class="input-group">
								<p>목표 금액이 얼마인가요?</p>						
								<input type="number" name="goalmoney" id="goalmoney" class="form-control" size="20" id="goalmoney" placeholder="goalmoney"  required="required">
							</div>
						</div></div>
					</div>
				</div>
			</div>
			</div>
			<div class="innerWrap">
			<div class="wizard-card wizard-card-overlay" data-cardname="services">
				<h3>펀딩 기간 설정</h3>
				<div class="wizard-input-section">
					<div class="col-sm-12">
						<div class="form-group">
							<div class="input-group">
								<p>펀딩 시작 날짜</p>
								<div class="wizard-input-section">					
									<input type="date" name="opendate" class="form-control"  required="required"/>
								</div>
								<p>펀딩 마감 날짜</p>
								<div class="wizard-input-section">					
									<input type="date" name="closedate" class="form-control"  required="required"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="clear"></div>
			<div class="wizard-card wizard-card-overlay" data-cardname="services">
				<h3>상세 내용</h3>

				<div class="wizard-input-section">
					<div class="col-sm-12">
						<p>소개 페이지를 작성해 주세요.</p>
						<div class="form-group">				
													<!-- 에디터프레임호출 영역 -->
					<div id="editor_frame"></div>
					<!-- 실제 값이 담겨져서 넘어갈 textarea 태그 -->
					<textarea name="content" id="content" rows="10" cols="100"
						style="width: 766px; height: 412px; display: none;"></textarea>
						<!-- 에디터 끝 -->	
						</div>					
					</div>
				</div>	
		</div>
		<div style="clear: both;"></div>			
				
				<input type="submit" id="save_button" value="내용전송" />
				<input type="hidden" name="sellerid" value="fmbanana">
				<input type="hidden" name="sellerno" value="1">
				
				
			</form>
			
		</div>
	</div>
</body>
</html>