package com.bit.util;

import java.util.StringTokenizer;

public class Main {

	public Main() {
		// TODO Auto-generated constructor stub
		String msg = "java web       database spring";
		StringTokenizer token = new StringTokenizer(msg);
		//의미있는 값들만 잘라서 준다.ㅇ 
		while (token.hasMoreElements()) {
			String ele = (String) token.nextElement();
			System.out.println(ele);
		}// end while
		
		String[] arr= msg.split(" ");
		//띄어쓰기도 하나의 값으로 본다. 
		for(String ele: arr){
			System.out.println(ele);
		}
	}// end main
}// end class
