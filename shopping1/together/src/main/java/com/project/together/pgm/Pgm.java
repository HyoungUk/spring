package com.project.together.pgm;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Pgm {
	private int num;
	private int host_num;
	private String prgtype;
	private String name;
	private String sidename;
	private int price;
	private String place;
	private String content;
	private int maximum;
	private Date period_start;
	private Date period_end;
	private Date start_date;
	private Date end_date;
	private Date make_date;
	private MultipartFile wall_paper;
	private String wall_paper_url;
	private String wall_paper_name;
	
	public int getHost_num() {
		return host_num;
	}
	public void setHost_num(int host_num) {
		this.host_num = host_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSidename() {
		return sidename;
	}
	public void setSidename(String sidename) {
		this.sidename = sidename;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMaximum() {
		return maximum;
	}
	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Date getPeriod_start() {
		return period_start;
	}
	public void setPeriod_start(Date period_start) {
		this.period_start = period_start;
	}
	public Date getPeriod_end() {
		return period_end;
	}
	public void setPeriod_end(Date period_end) {
		this.period_end = period_end;
	}
	public Date getMake_date() {
		return make_date;
	}
	public void setMake_date(Date make_date) {
		this.make_date = make_date;
	}
	public String getPrgtype() {
		return prgtype;
	}
	public void setPrgtype(String prgtype) {
		this.prgtype = prgtype;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public MultipartFile getWall_paper() {
		return wall_paper;
	}
	public void setWall_paper(MultipartFile wall_paper) {
		this.wall_paper = wall_paper;
	}
	public String getWall_paper_url() {
		return wall_paper_url;
	}
	public void setWall_paper_url(String wall_paper_url) {
		this.wall_paper_url = wall_paper_url;
	}
	public String getWall_paper_name() {
		return wall_paper_name;
	}
	public void setWall_paper_name(String wall_paper_name) {
		this.wall_paper_name = wall_paper_name;
	}
}