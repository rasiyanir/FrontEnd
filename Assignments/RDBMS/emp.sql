SELECT * FROM riyaz.emp;

select ENAME from riyaz.emp where job="Analyst" or job= "Salesman"  ;

select EMPNO, ENAME,JOB, HIREDATE from riyaz.emp where HIREDATE < "1981-09-30";

select ENAME, JOB from riyaz.emp where NOT job = "Manager";

select ENAME from riyaz.emp where EMPNO IN ('7369', '7521','7839', '7934', '7788');

select ENAME from riyaz.emp where DEPTNO NOT IN ('30', '40', '10');

select ENAME from riyaz.emp where HIREDATE BETWEEN '1981-06-30' AND  '1981-12-31';

select distinct JOB from riyaz.emp;

select ENAME from riyaz.emp where COMM IS NULL;

select ENAME, JOB from riyaz.emp where MGR IS NULL;

select ENAME from riyaz.emp where DEPTNO IS NULL;

select ENAME from riyaz.emp where COMM IS NOT NULL;

select ENAME from riyaz.emp where ENAME like 'S%' OR ENAME like "%S";

select ENAME from riyaz.emp where ENAME like '_i%';

select count(EMPNO) from riyaz.emp;

select count(DISTINCT JOB) from riyaz.emp;

select SUM(SAL) from riyaz.emp;

select MAX(SAL), MIN(SAL), AVG(SAL) from riyaz.emp;

select MAX(SAL) from riyaz.emp where JOB='Salesman';

select JOB, AVG(SAL) from riyaz.emp where DEPTNO='20' GROUP BY JOB HAVING AVG(SAL) > 1000 ORDER BY JOB; 	

select count(EMPNO), AVG(SAL) from riyaz.emp where DEPTNO = '20';

select ENAME, SAL, SAL + 0.1*SAL as 'PF' from riyaz.emp;

select curdate(), timestampdiff(Year, HIREDATE, CURDATE()) AS 'Age' from riyaz.emp where timestampdiff(Year, HIREDATE, CURDATE()) > 37;



select EMPNO, ENAME, JOB, SAL from riyaz.emp order by SAL;

select ENAME, HIREDATE from riyaz.emp order by HIREDATE DESC;

select ENAME, SAL, SAL + 0.1*SAL as 'PF', sal*0.5 as 'HRA', SAL*0.3 as 'DA', sal + sal*0.1 + sal*0.5 as 'GROSS' from riyaz.emp order by 'GROSS';

select DEPTNO, count(EMPNO) from riyaz.emp GROUP BY DEPTNO;

select DEPTNO, SUM(SAL) from riyaz.emp GROUP BY DEPTNO;

select JOB, count(EMPNO) from riyaz.emp GROUP BY JOB ORDER BY COUNT(EMPNO) DESC;

select SUM(SAL), MAX(SAL), MIN(SAL), AVG(SAL), JOB from riyaz.emp group by JOB;

select SUM(SAL), MAX(SAL), MIN(SAL), AVG(SAL) from riyaz.emp where DEPTNO = '20';

select AVG(SAL), JOB from riyaz.emp where DEPTNO = '20' GROUP BY JOB HAVING AVG(SAL) > '1000' ;