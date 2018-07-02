package com.ch.ch08.model;
import java.sql.Date;
public class Emp {
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private Date hiredate;
	private int sal;
	private int comm;
	private int deptno;
	// 부서테이블 용 시작
	private String dname;
	private String loc;	
	
	public String getDname() {	return dname;	}
	public void setDname(String dname) {	this.dname = dname;	}
	public String getLoc() {	return loc;	}
	public void setLoc(String loc) {	this.loc = loc;	}
	// 부서테이블 용 끝
	public int getEmpno() {	return empno;	}
	public void setEmpno(int empno) {	this.empno = empno;	}
	public String getEname() {	return ename;	}
	public void setEname(String ename) {	this.ename = ename;	}
	public String getJob() {	return job;	}
	public void setJob(String job) {	this.job = job;	}
	public int getMgr() {	return mgr;	}	
	public void setMgr(int mgr) {	this.mgr = mgr;	}
	public Date getHiredate() {	return hiredate;	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public int getSal() {	return sal;	}
	public void setSal(int sal) {	this.sal = sal;	}
	public int getComm() {	return comm;	}
	public void setComm(int comm) {	this.comm = comm;	}
	public int getDeptno() {	return deptno;	}
	public void setDeptno(int deptno) {	this.deptno = deptno;	}
	
}