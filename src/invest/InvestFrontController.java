package invest;

import java.io.IOException;
import java.util.Enumeration;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSeparatorUI;

import net.action.Action;
import net.action.ActionForward;

public class InvestFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	public ActionForward exec(HttpServletRequest req, HttpServletResponse resp, Action action){
		ActionForward forward=null;
		try {
			forward=action.execute(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}//exec() : to reduce lines.
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		System.out.println("InvestFrontController.java 진입");
		
		String RequsetURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		
		String command = RequsetURI.substring(contextPath.length());
		ActionForward forward = null;
		String isRedirect = command.substring(command.length()-1);
		System.out.println("isRedirect : "+isRedirect);
		
		Action action = null;

		// Redirect 이동 방식 setting
		// 넘겨 받은 parameter 가 없을 경우.(페이지 이동만 할 경우)
		// 규칙 : destFile.isRedirect - 최종 이동 경로 : invest/filename.jsp
		StringTokenizer st = new StringTokenizer(command, ".");		
		String destFile = st.nextToken();
		System.out.println("st : " + st);
		System.out.println("command : "+command);
		System.out.println("destFile : "+destFile);
		
		Enumeration<String> enu = req.getParameterNames();
		boolean flag = enu.hasMoreElements();
		System.out.println("flag : " + flag);
		if(isRedirect.equals("r")&&(!flag)){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("index.jsp?center=invest"+destFile+".jsp");
		}//if(isRedirect.equals("investr"))	- Redirect 이동 방식
		
		if(command.equals("/funding.investr")){
			forward = new ActionForward();
			forward.setRedirect(false);
			String croid = req.getParameter("croid");
			forward.setPath("index.jsp?center=invest/funding.jsp?croid="+croid);
		}if(command.equals("/cancelmenu.investr")){
			forward = new ActionForward();
			forward.setRedirect(false);
			String croid = req.getParameter("croid");
//			forward.setPath("index.jsp?center=invest/cancel.jsp?croid="+croid);
			forward.setPath("cancelmenu.investf");
		}
		
		// forward 이동방식
		if(command.equals("/board.investf")){
			System.out.println("/board.investf 진입");
			action = new InvestBoardAction();
			forward=exec(req, resp, action);			
		}else if(command.equals("/content.investf")){
			System.out.println("/content.investf 진입");
			action = new InvestContentAction();
			forward=exec(req, resp, action);
		}else if(command.equals("/pay.investf")){
			System.out.println("/pay.investf 진입");
			action = new PayAction();
			forward=exec(req, resp, action);
		}else if(command.equals("/cancelmenu.investf")){
			System.out.println("/cancelmenu.investf 진입");
			action = new CancelMenuAction();
			forward=exec(req, resp, action);
		}else if(command.equals("/cancel.investf")){
			System.out.println("/cancel.investf 진입");
			System.out.println("req.getParameter(croid) : "+req.getParameter("croid"));
			action = new CancelAction();
			forward=exec(req, resp, action);
		}
		
		
		// fake login, logout.
		else if(command.equals("/login.investf")){//fake login
			System.out.println("/login.investf 진입");
			HttpSession session = req.getSession(true);
			session.setAttribute("id", "lee");
			action = new FakeLoginAction();
			forward = exec(req, resp, action);
		}else if(command.equals("/logout.investf")){//fake logout
			System.out.println("/logout.investf 진입");
			HttpSession session = req.getSession(false);
			session.invalidate();
			action = new FakeLogoutAction();
			forward = exec(req, resp, action);			
		}
		
		// 실제 이동
		if (forward != null) {
			if (forward.isRedirect()) {
				System.out.println("if (forward.isRedirect())");
				System.out.println("center : "+req.getAttribute("center"));
				resp.sendRedirect(forward.getPath());
			} else {
				System.out.println("investf");
				System.out.println("center : "+req.getAttribute("center"));
				RequestDispatcher dis = req.getRequestDispatcher(forward.getPath());
				dis.forward(req, resp);
			}
		}
	}//doProcess()
}//class InvestFrontController
