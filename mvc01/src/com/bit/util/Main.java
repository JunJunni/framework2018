package com.bit.util;

import java.util.StringTokenizer;

public class Main {

	public Main() {
		// TODO Auto-generated constructor stub
		String msg = "java web       database spring";
		StringTokenizer token = new StringTokenizer(msg);
		//�ǹ��ִ� ���鸸 �߶� �ش�.�� 
		while (token.hasMoreElements()) {
			String ele = (String) token.nextElement();
			System.out.println(ele);
		}// end while
		
		String[] arr= msg.split(" ");
		//���⵵ �ϳ��� ������ ����. 
		for(String ele: arr){
			System.out.println(ele);
		}
	}// end main
}// end class
