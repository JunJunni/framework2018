package com.bit.util;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.bit.controller.AddFormController;
import com.bit.controller.IndexController;
import com.bit.controller.InsertController;
import com.bit.controller.IntroController;
import com.bit.controller.ListController;

public class DispatcherServlet extends HttpServlet {
	/*
	 * TRACE > DEBUG > INFO > WARN > ERROR > FATAL
	 * 
	 * */
	//Logger log = Logger.getRootLogger();
	Logger log = Logger.getLogger("com.bit.util.DispatcherServlet");
	
	
	HashMap<String,BitController> map = new HashMap<String,BitController>();
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		map.put("/index.do", new IndexController());
		map.put("/intro.do", new IntroController());
		map.put("/bbs/list.do", new ListController());
		map.put("/bbs/add.do", new AddFormController());
		map.put("/bbs/insert.do", new InsertController());
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String view = "";
		String prifix="/WEB-INF/view/";
		String suffix=".jsp";
		BitController controller = null;
		String url=req.getRequestURI().substring(req.getContextPath().length()); //uri 주소를 일단 받아오기
		
		controller=map.get(url);		
		
		
		try {
			view =controller.execute(req); // 호출 주소 문자열을 받는다.
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(view.startsWith("redirect:")){ //redirect로 시작하면 sendredirect 하고
			resp.sendRedirect(view.substring("redirect:".length()));
		}else{ //그렇지 않다면 forward 해야한다. 
			req.getRequestDispatcher(prifix+view +suffix).forward(req, resp);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp); //이러면 post 나 get이나 함수 호출하니까 ... .상관없다는거지 
	}
	
	
}
