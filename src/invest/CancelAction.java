package invest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.action.Action;
import net.action.ActionForward;

public class CancelAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("InvestContentAction 진입");
		int funno = Integer.parseInt(request.getParameter("funno"));
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
//		CrowdDAO cdao = new CrowdDAO();
//		request.setAttribute("cdto", cdao.getContent(croid));
//		ProductDAO pdao = new ProductDAO();
//		request.setAttribute("pdto", pdao.getContent(croid));
		FundingDAO fdao = new FundingDAO();
//		int croid = 
				fdao.cancelFunding(funno);
//		request.setAttribute("croid", croid);
				
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("content.investf");
		
//		forward.setPath("index.jsp?center=invest/content.jsp?croid="+croid);
		return forward;
	}

}
