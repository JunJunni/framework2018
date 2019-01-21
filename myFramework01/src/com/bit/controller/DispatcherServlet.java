package com.bit.controller;

import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * index.do-
 * intro.do-
 * list.do-
 * add.do-
 * 
 * */

public class DispatcherServlet extends HttpServlet {
	// ��� url�� servlet�� �� �������̴�.

	Logger logger =Logger.getGlobal();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doDo(req, resp);
	}// end get

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doDo(req, resp);

	}// end post

	private void doDo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// get ����̰� post����̰� doDo�� ȣ���ؼ� �����ų��
		String url = req.getRequestURI().substring(req.getContextPath().length());
		
		logger.addHandler(new FileHandler("c:\\java\\log\\test.log"));
		logger.info(url);

		String path="";
		BitController controller = null;
		
		
		// if((req.getContextPath()+"/index.do").equals(req.getRequestURI())){
		if ("/index.do".equals(url)) {
			controller = new IndexController();
		} else if ("/intro.do".equals(url)) {
			// }else
			// if((req.getContextPath()+"/intro.do").equals(req.getRequestURI())){
			controller = new IntroController();
		} else if ("/list.do".equals(url)) {
			controller = new ListController();
		} else if ("/add.do".equals(url)) {
			controller = new AddController();
		} else if ("/insert.do".equals(url)) { //param���� �޾ƾ���! 
			controller = new InsertController();
		} else if ("/delete.do".equals(url)){
			controller = new DelController();
		}
		// � url�� �������Ŀ� ���� jsp������ �ٲܰ��̴�.
		path = controller.execute(req);
		if(path.startsWith("redirect:")){
			resp.sendRedirect(path.substring("redirect:".length()));
		}else{
			RequestDispatcher rd = req.getRequestDispatcher(path);
			rd.forward(req, resp);
		}
	}
}
