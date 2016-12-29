package invest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.action.Action;
import net.action.ActionForward;

public class InvestContentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int croid = Integer.parseInt(request.getParameter("croid"));
		
		CrowdDAO cdao = new CrowdDAO();
		request.setAttribute("cdto", cdao.getContent(croid)); 
		
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("index.jsp?center=invest/content.jsp");
		return forward;		
	}

}
