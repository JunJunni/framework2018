package com.bit.controller;

import javax.servlet.http.HttpServletRequest;

public class IndexController implements BitController{

	public String execute(HttpServletRequest req){
		//controller class ->������Ѽ� url�� ���� jsp ������ �ٲܰ�
			return "main.jsp";
	}
}
