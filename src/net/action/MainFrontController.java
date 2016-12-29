package net.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class MainFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	
	
	
	
	public void skipaction(HttpServletRequest req, HttpServletResponse resp, ActionForward forward,Action action){
		
		
		try {
			forward=action.execute(req, resp);
			
		} catch (Exception e) {
			
		}
		
	}
	
	
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("MainFrontControoler.java");
		//
		// CarProject/MemberJoinAction.me占쎌궛由�

		String RequsetURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		System.out.println(RequsetURI);

		System.out.println(contextPath);

		String command = RequsetURI.substring(contextPath.length());
		// 占쎌꼷�뵠筌욑옙占쎈�猷욆쳸�뫗�뻼 占싼됵옙揶쏉옙 占쎈�猷욑옙�꼷�뵠筌욑옙野껋럥以덂첎占쏙옙占쎌삢占쎌꼷肉� �뵳�뗪쉘占쎈똻竊쒙옙占썲첎�빘猿쒐몴占쏙옙占쎌삢占쏙옙筌〓챷�쒑퉪占쎈땾 占쎌쥙堉�
		ActionForward forward = null;

		Action action = null;

		if (command.equals("/sellnotice.cw")) {
			forward = new ActionForward();
		
			forward.setRedirect(false);
			
			forward.setPath("index.jsp?center=stoerpage/sellnotice.jsp");

		}
		
		
		
		if (command.equals("/sell_detail.cw")) {
			forward = new ActionForward();
		
			forward.setRedirect(false);
			
			forward.setPath("index.jsp?center=stoerpage/sell_detail.jsp");

		}
		if (command.equals("/Basket.cw")) {
			forward = new ActionForward();
		
			forward.setRedirect(false);
			
			forward.setPath("index.jsp?center=stoerpage/Basket.jsp");

		}
		
	/*	
		else if(command.equals("/MemberLogout.me"))
		{
		
		
			
			action=new MemberLogoutAction();
			
			
			
			
			
			skipaction(req,resp,foward,action);
			
			�몢以꾨줈 try_catch �깮�왂
			
			try {
				forward=action.execute(req, resp);
				
				
				
			} catch (Exception e) {
			
			}
			
				
			
			
		}*/
		
		
		
		
		
		
		
		
		
		
		if (forward != null) {
			if (forward.isRedirect()) {

		
				resp.sendRedirect(forward.getPath());

			} else {

			
				RequestDispatcher dis = req.getRequestDispatcher(forward.getPath());

				dis.forward(req, resp);

			}

		}

		else {

		}


	}
}