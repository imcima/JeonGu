<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Uploadify Example Script</title>
<link href="/JeonGu/crowdRoot/css/default.css" rel="stylesheet" type="text/css" />
<link href="/JeonGu/crowdRoot/css/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/JeonGu/crowdRoot/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/JeonGu/crowdRoot/js/swfobject.js"></script>
<script type="text/javascript" src="/JeonGu/crowdRoot/js/jquery.uploadify.v2.1.0.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#file_upload").uploadify({
		'uploader'       : 'js/uploadify.swf',	//uploadify.swf 경로, 절대 및 상대경로 지정 가능 (여기서는 상대경로)
		'script'         : 'fileUpload.jsp?croid=<%=request.getParameter("croid")%>',        //서버script 호출 경로, 절대 및 상대경로 지정 가능 (여기서는 절대경로)
		'cancelImg'      : 'daumeditor/images/cancel.png',	//취소버튼 경로, 절대 및 상대경로 지정 가능 (여기서는 상대경로)
		'queueID'        : 'fileQueue',  //멀티로 업로드시 파일 리스트를 보여줄곳의 id 지정
		'auto'           :  true,   //파일을 선택하면 자동으로 업로드 할지 여부
		'multi'          :  true,   //멀티 업로드 여부
//		'fileDesc'		 : 'ImageFiles (*.gif, *.jpg)',  //파일탐색기 창에 파일 종류를 보여줄 텍스트
//		'fileExt'		 : '*.gif;*.jpg',                           //업로드를 허용할 파일 확장자
		'sizeLimit'		 : (10000 * 1024 * 1024),             //제한할 파일 용량 (서버로 sizeLimit로 파라미터가 전달되며 서버에서 처리)
		'buttonText'	 : 'Search',                           //버튼 텍스트
		'height'		 : 30,                                         //버튼 텍스트 세로 크기
//        'onUploadComplete' : function(file) {
 //           alert('The file ' + file.name + ' finished processing.');
 //       }
	});	
});
</script>
</head>
<body>
<div id="fileQueue"></div>
<input type="file" name="file_upload" id="file_upload" /> <p></p>
<!-- <a href="javascript:jQuery('#file_upload').uploadifyClearQueue()">Cancel All Uploads</a> -->
<!-- <p></p> -->
<!-- <a href="javascript:jQuery('#file_upload').uploadifyUpload()">Upload Files</a> -->

</body>
</html>