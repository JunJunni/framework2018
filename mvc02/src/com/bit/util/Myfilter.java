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
		//���� initparam���� xml�� ������ param�� �޾ƿ����� request�� �ٸ��� ������ �Ұ���
		
		 //���͸� ����ϴ� �κ�!! 
		//���ʹ� ������ �����ϱ� ����, �� ����Ǳ⶧���� 
		//��Ʈ�ѷ� ������ ĳ�������ڵ��� ���� �����ϴ°ͤ� �����ƿ�ȣȣȣȣ~ 
		//�����Ҷ� Ŭ������ �ö���ϱ�...
		//���������� param �¿��.. ����??? �ܺο��� ����ϰų�,�ҷ���������?/?
		req.setCharacterEncoding(encoding);
		chain.doFilter(req, resp);
		
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("filter init");
		//init ->config (ȯ�漳��)�Ѱ���		
		encoding=config.getInitParameter("encoding");
	}

}
