-- -- equi join
-- inner join
select e.empno,e.ename, e.job,e.sal,
	d.dname, d.loc from emp e, DEPT d
 where e.deptno=d.deptno;
 select empno,ename, job,sal,
	dname, loc from emp e, DEPT d
 where e.deptno=d.deptno;
 
select e.*,
	dname, loc from emp e, DEPT d
 where e.deptno=d.deptno;
 
-- outer join
 select e.*,
	dname, loc from emp e, DEPT d
 where e.deptno(+)=d.deptno;

-- self join
 select w.ename 사원, m.ename 사수 from emp w, emp m
 	where w.mgr=m.empno;
 
-- non equi join
select empno,ename,sal,grade from emp,salgrade 
	where sal between losal and hisal; 