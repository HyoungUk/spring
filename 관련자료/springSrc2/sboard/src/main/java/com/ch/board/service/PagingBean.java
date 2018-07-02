package com.ch.board.service;
public class PagingBean {
	private int rowPerPage;
	private final int PAGEPERBLOCK = 10;
	private int startPage;
	private int endPage;
	private int totalPage;
	private int currentPage;
	
	public PagingBean(int total, int currentPage, int rowPerPage) {
		this.rowPerPage = rowPerPage; 
		this.currentPage = currentPage;
		totalPage = (int)Math.ceil((double)total/rowPerPage);
		startPage = currentPage - (currentPage - 1)%PAGEPERBLOCK;
		endPage = startPage + PAGEPERBLOCK - 1;
		if (endPage > totalPage) endPage = totalPage;
	}
	
	public int getCurrentPage() {	return currentPage;	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getRowPerPage() {	return rowPerPage;	}
	public void setRowPerPage(int rowPerPage) {
		this.rowPerPage = rowPerPage;
	}
	public int getStartPage() {		return startPage;	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {		return endPage;	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotalPage() {		return totalPage;	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPAGEPERBLOCK() {	return PAGEPERBLOCK;	}	
}