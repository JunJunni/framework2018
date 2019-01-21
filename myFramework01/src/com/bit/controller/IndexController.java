package com.bit.controller;

import javax.servlet.http.HttpServletRequest;

public class IndexController implements BitController{

	public String execute(HttpServletRequest req){
		//controller class ->실행시켜서 url에 따라 jsp 파일을 바꿀것
			return "main.jsp";
	}
}
