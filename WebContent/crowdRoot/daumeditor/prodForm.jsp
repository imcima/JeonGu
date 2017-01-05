<%@page import="java.util.Enumeration"%>
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
		$
				.ajax({
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
		
		//form submitRe 버튼 클릭
		$("#save_buttonRe").click(function() {
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
			<form name="frm" id="frm" action="addProd.apply" method="post" accept-charset="utf-8">
				<!-- ------------------------------ -->
				<div class="wizard-card" data-cardname="name">
				<h3>상품소개</h3>				
				<div class="wizard-input-section">
					<div class="col-sm-12">
						<p>상품 이름</p>
						<div class="form-group">
						 	<div class="input-group">
								<input type="text" class="form-control" id="prodName" name="prodName" placeholder="prodName" required="required">
								<a href="/JeonGu/crowdRoot/upload.jsp?croid=<%=request.getParameter("croid") %>" 
								onclick="window.open(this.href,'이미지 업로드','width=400, height=200, scrollbars=no, location=no, directories=no, menubar=no'); return false;" 
								>이미지 업로드</a>
								&nbsp;:&nbsp;<input type="text" name="img" value="" readonly="readonly" style="border: 0px;"> 
							</div>
						</div>
					</div>					
				</div>					
			</div>
			

			<div class="wizard-card" data-cardname="group">
				<h3>상품 기획 수량</h3>
				<div class="wizard-input-section">
					<div class="col-sm-12">
						<div class="form-group">
							<div class="input-group">
							<p>생산 수량이 몇기인가요?</p>						
							<input type="number" name="qty" id="qty" class="form-control" placeholder="qty"  required="required">
						</div>
					</div></div>
				</div>
				
				<h3>상품 가격</h3>
				<div class="wizard-input-section">
					<div class="col-sm-12">
						<div class="form-group">
							<div class="input-group">
							<p>펀딩 기간 중 가격</p>						
							<input type="number" name="price" id="price" class="form-control" size="20" placeholder="price"  required="required">
						</div>
					</div></div>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="input-group">
							<p>펀딩 마감 후 가격</p>						
							<input type="number" name="afterprice" id="afterprice" class="form-control" size="20" placeholder="afterprice"  required="required">
						</div>
					</div></div>
				</div>			
			</div>
			

			<div class="wizard-card wizard-card-overlay" data-cardname="services">
				<h3>상세 내용</h3>

				<div class="wizard-input-section">
					<p>소개 페이지를 작성해 주세요.</p>
					<div class="form-group">				
												<!-- 에디터프레임호출 영역 -->
				<div id="editor_frame"></div>
				<!-- 실제 값이 담겨져서 넘어갈 textarea 태그 -->
				<textarea name="content" id="content" rows="10" cols="100"
					style="width: 766px; height: 412px; display: none;"></textarea>
					<!-- 에디터 끝 -->	
					</div>
				<div style="clear: both;"></div>
				</div>
			
			
		</div>			
				
				<input type="button" id="save_button" value="완료" />
				<input type="button" id="save_buttonRe" value="하나 더 만들기" />
				
				<input type="hidden" name="sellerid" value="fmbanana">
				<input type="hidden" name="sellerno" value="1">
								
				<input type="hidden" name="croid" value="<%=request.getParameter("croid")%>">
				<input type="hidden" name="cateno" value="<%=request.getParameter("cateno")%>">
				<input type="hidden" name="sellerid" value="<%=request.getParameter("sellerid")%>">
				<input type="hidden" name="sellerno" value="<%=request.getParameter("sellerno")%>">
				<input type="hidden" name="sellername" value="<%=request.getParameter("sellername")%>">
				<input type="hidden" name="sellerno" value="<%=request.getParameter("sellerno")%>">	
			</form>
			<table border="1px solid black">
				<%
					Enumeration<String> em = request.getParameterNames();
					while (em.hasMoreElements()) {
						String value = em.nextElement();
				%>
				<tr>
					<td><%=value%></td>
					<td><%=request.getParameter(value)%></td>
				</tr><%}%>
			</table>

		</div>
	</div>
</body>
</html>