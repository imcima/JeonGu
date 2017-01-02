package invest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.FunddingDto;
import net.action.Action;
import net.action.ActionForward;

public class InvestContentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("InvestContentAction 진입");
		int croid = Integer.parseInt(request.getParameter("croid"));
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		CrowdDAO cdao = new CrowdDAO();
		request.setAttribute("cdto", cdao.getContent(croid));
		ProductDAO pdao = new ProductDAO();
		request.setAttribute("pdto", pdao.getContent(croid));
		FunddingDAO fdao = new FunddingDAO();
		request.setAttribute("fdto", fdao.getContent(id));
		
		
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("index.jsp?center=invest/content.jsp");
		return forward;
	}

}
