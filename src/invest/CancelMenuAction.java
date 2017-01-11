package invest;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.FundingDto;
import net.action.Action;
import net.action.ActionForward;

public class CancelMenuAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("CancelMenuAction 진입");
		int croid = Integer.parseInt(request.getParameter("croid"));
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
//		CrowdDAO cdao = new CrowdDAO();
//		request.setAttribute("cdto", cdao.getContent(croid));
//		ProductDAO pdao = new ProductDAO();
//		request.setAttribute("pdto", pdao.getContent(croid));
		List<FundingDto> flist = new ArrayList<>();
		FundingDAO fdao = new FundingDAO();
		flist = fdao.getFundingList(croid, id);
		request.setAttribute("flist", flist);
		
		System.out.println("flist.isEmpty() : "+flist.isEmpty());
		
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		forward.setPath("index.jsp?center=invest/cancel.jsp");
		
		return forward;
	}

}
