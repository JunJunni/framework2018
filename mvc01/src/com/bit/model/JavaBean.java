package com.bit.model;

import java.util.Date;

//학생성적이라 생각해봄다
public class JavaBean {
 private int num;
 private String name;
 private Date ddate;
 private char ch;
 private boolean boo;
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Date getDdate() {
	return ddate;
}
public void setDdate(Date ddate) {
	this.ddate = ddate;
}
public char getCh() {
	return ch;
}
public void setCh(char ch) {
	this.ch = ch;
}
public boolean isBoo() {
	return boo;
}
public void setBoo(boolean boo) {
	this.boo = boo;
}
}
