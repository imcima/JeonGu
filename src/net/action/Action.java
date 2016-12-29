package net.action;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public interface Action {



		//?�정 ?�라?�언?�의 ?�청???�행?�고 그결과값??ActionForward객체 ??��?�로 반환
		//조건 추상 메소??=> ?�속받�? ?�래?�는 무조�?메소???�버?�이???�야??
public ActionForward execute(HttpServletRequest request, HttpServletResponse response)  
		throws Exception;

		


}
