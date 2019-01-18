package com.bit.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public class Myfilter implements Filter {
	String encoding;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy...");
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
//		System.out.println("filter doFilter...");
//		PrintWriter out =resp.getWriter();
//		out.print("filter print...");
	
		
////////////////// 		
		//원래 initparam으로 xml에 설정한 param을 받아왔지만 request가 다르기 때문에 불가능
		
		 //필터를 사용하는 부분!! 
		//필터는 서블렛을 실행하기 전후, 로 실행되기때무넹 
		//컨트롤러 실행전 캐릭터인코딩을 통해 설정하는것ㅇ ㅣ좋아요호호호호~ 
		//실행할때 클래스로 올라오니까...
		//엑셈엘에서 param 태운다.. 왜죠??? 외부에서 사용하거나,불러오기위해?/?
		req.setCharacterEncoding(encoding);
		chain.doFilter(req, resp);
		
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("filter init");
		//init ->config (환경설정)한거지		
		encoding=config.getInitParameter("encoding");
	}

}
