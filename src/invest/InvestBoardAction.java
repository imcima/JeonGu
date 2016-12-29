package invest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.action.Action;
import net.action.ActionForward;

public class InvestBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		CrowdDAO cdao = new CrowdDAO();
			
		request.setAttribute("crowdlist", cdao.getCrowdList());
		
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("index.jsp?center=invest/board.jsp");
		return forward;
	}

}
