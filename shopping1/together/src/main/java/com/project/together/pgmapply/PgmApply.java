package com.project.together.pgmapply;

import java.sql.Date;

public class PgmApply {
	int apply_num;
	int mb_num;
	int pgm_num;
	Date start_date;
	Date end_date;
	Date apply_day;
	
	public int getApply_num() {
		return apply_num;
	}
	public void setApply_num(int apply_num) {
		this.apply_num = apply_num;
	}
	public int getMb_num() {
		return mb_num;
	}
	public void setMb_num(int mb_num) {
		this.mb_num = mb_num;
	}
	public Date getApply_day() {
		return apply_day;
	}
	public void setApply_day(Date apply_day) {
		this.apply_day = apply_day;
	}
	public int getPgm_num() {
		return pgm_num;
	}
	public void setPgm_num(int pgm_num) {
		this.pgm_num = pgm_num;
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
}
