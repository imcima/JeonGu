<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%
// 	String uploadPath="C:/imgdata/";
	HttpSession se=request.getSession();
// 	Enumeration em = se.getAttributeNames();
// 	while(em.hasMoreElements()){
// 		System.out.println("세션 내 객체들 이름 : "+em.nextElement().toString());
// 		System.out.println("세션 내 id : "+se.getAttribute("id"));
// 	}
Enumeration em = request.getAttributeNames();
	while(em.hasMoreElements()){
		System.out.println("req 변수들 이름 : "+request.getParameter("croid"));		
	}
	
	
	String uploadPath="D:/$ workspace_jsp/JeonGu/WebContent/img/crowd_"+request.getParameter("croid")+"/";
	System.out.println("D:/...ace_jsp->본인 워크스페이스로 변경할 것(crowdRoot/fileUpload.jsp) : "+uploadPath);
	
	
	File file = new File(uploadPath);
	
//	경로 없을 때 경로 생성하는 코드
	if(!file.exists()){file.mkdir();}
	
	
	int size = 10000 * 1024 * 1024;
	try{
		MultipartRequest multi=new MultipartRequest(request,
							uploadPath,
							size, 
							"utf-8",
				new DefaultFileRenamePolicy());		

	}catch(Exception e){
		e.printStackTrace();
	}	
%>
<html>
<body>

</body>
</html>