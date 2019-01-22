package com.bit.model.entity;

import java.sql.Timestamp;

public class BbsVo {
	private int idx;
	private String sub, content;
	private Timestamp ddate;
	private int cnt;

	public BbsVo() {
		// TODO Auto-generated constructor stub
	}

	public BbsVo(int idx, String sub, String content, Timestamp ddate, int cnt) {
		super();
		this.idx = idx;
		this.sub = sub;
		this.content = content;
		this.ddate = ddate;
		this.cnt = cnt;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getDdate() {
		return ddate;
	}

	public void setDdate(Timestamp ddate) {
		this.ddate = ddate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "BbsVo [idx=" + idx + ", sub=" + sub + ", content=" + content
				+ ", ddate=" + ddate + ", cnt=" + cnt + "]";
	}

}
