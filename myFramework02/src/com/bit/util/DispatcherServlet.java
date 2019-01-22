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
		String url=req.getRequestURI().substring(req.getContextPath().length()); //uri �ּҸ� �ϴ� �޾ƿ���
		
		controller=map.get(url);		
		
		
		try {
			view =controller.execute(req); // ȣ�� �ּ� ���ڿ��� �޴´�.
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(view.startsWith("redirect:")){ //redirect�� �����ϸ� sendredirect �ϰ�
			resp.sendRedirect(view.substring("redirect:".length()));
		}else{ //�׷��� �ʴٸ� forward �ؾ��Ѵ�. 
			req.getRequestDispatcher(prifix+view +suffix).forward(req, resp);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp); //�̷��� post �� get�̳� �Լ� ȣ���ϴϱ� ... .������ٴ°��� 
	}
	
	
}
