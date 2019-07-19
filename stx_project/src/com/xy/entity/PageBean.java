package com.xy.entity;

public class PageBean {
	// 开始索引
	private int startIndex;
	// 结束索引
	private int endIndex;

	public PageBean() {
	}

	public PageBean(int startIndex, int endIndex) {
		this.startIndex = startIndex;
		this.endIndex = endIndex;
	}

	public int getEndIndex() {
		return endIndex;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
}