package net.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.crowd.*;

public class ApplyController extends HttpServlet {
	/* 프로젝트 신청 */
	private static final long serialVersionUID = 1L;

	public ActionForward skipaction(HttpServletRequest req, HttpServletResponse resp, Action action) {
		ActionForward forward = null;
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {}
		return forward;
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String RequsetURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		System.out.println("RequsetURI : "+RequsetURI);
		System.out.println("contextPath : "+contextPath);

		String command = RequsetURI.substring(contextPath.length());	
		System.out.println("command : "+command);
		ActionForward forward = null;
		Action action = null;

		if (command.equals("/form.apply")) {//크라우드 설명 페이지
			forward = new ActionForward();
			forward.setRedirect(false);		
			forward.setPath("index.jsp?center=crowdRoot/applyForm/form.jsp");

		}else if (command.equals("/newForm.apply")) {//크라우드 신청 폼
			forward = new ActionForward();
			forward.setRedirect(false);		
			forward.setPath("index.jsp?center=crowdRoot/daumeditor/newForm.jsp");	

		}else if (command.equals("/addCrowd.apply")) {
			CrowdDAO cdao = new CrowdDAO();
			String croid = cdao.insertCrowd(req);
			
			forward = new ActionForward();
			forward.setRedirect(false);		
			forward.setPath("index.jsp?center=crowdRoot/daumeditor/prodForm.jsp&croid="+croid);

		}else if (command.equals("/addProd.apply")) {
			CrowdDAO cdao = new CrowdDAO();
			String croid = cdao.insertProd(req);			
			forward = new ActionForward();
			forward.setRedirect(false);		
			forward.setPath("index.jsp");
		}else if (command.equals("/addProdRe.apply")) {
			CrowdDAO cdao = new CrowdDAO();
			String croid = cdao.insertProd(req);			
			forward = new ActionForward();
			forward.setRedirect(false);		
			forward.setPath("index.jsp?center=crowdRoot/daumeditor/prodForm.jsp&croid="+croid);
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());

			} else {
				RequestDispatcher dis = req.getRequestDispatcher(forward.getPath());
				dis.forward(req, resp);
			}
		}

	}

	

}