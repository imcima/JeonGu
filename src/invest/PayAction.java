package invest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.action.Action;
import net.action.ActionForward;

public class PayAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("PayAction 진입");
		int croid = Integer.parseInt(request.getParameter("croid"));
		int qty = Integer.parseInt(request.getParameter("qty"));
				
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
			
//		croid, prodid, memberno, date, invmoney, qty, state
		FundingDAO fdao = new FundingDAO();
		fdao.payFunding(croid, qty, id);		
				
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("board.investf");
		return forward;
	}

}
