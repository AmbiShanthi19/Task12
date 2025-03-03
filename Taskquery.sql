create database Empl;
use  Empl;
create table Empl_details (
		empno int Unique,
    ename varchar(25) NOT NULL, 
    job varchar(25),
    mgr  int,
    hiredate YYYY-MM-DD,
    salary decimal(10,4),
    comm decimal(10,4),
    deptno int,
        );
        
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8639,'SMITH', 'CLERK',8902,'1990-12-18', '800.00', NULL, 20);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8499,'ANYA', 'SALESMAN',8698,'1991-02-20', '1600.00', '300.00', 30);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8521,'SETH', 'SALESMAN',8698,'1991-02-22', '1250.00', '500.00', 30);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8566,'MAHADEVAN', 'MANAGER',8839,'1991-04-02', '2985.00', NULL, 20);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8654,'MOMIN', 'SALESMAN',8698,'1991-09-28', '1250.00', '1400.00', 30);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8698,'BINA', 'MANAGER',8839,'1991-05-01', '2850.00', NULL, 30);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8882,'SHIVANSH', 'MANAGER',8839,'1991-06-09', '2450.00', NULL, 10);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8888,'SCOTT', 'ANALYST',8566,'1992-12-09', '3000.00', NULL, 20);
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8839,'AMIR', 'PRESIDENT',NULL,'1991-11-18', '5000.00', NULL, 10); 
insert into Empl_details(empno,ename,job,mgr,hiredate,salary,comm,deptno) values (8844,'KULDEEP', 'SALESMAN',8698,'1991-09-08', '1500.00', '0.00', 30);

Select * from Empl_details;

Select ename,sal from Empl_details where sal>='2200';

Select ename from Empl_details where comm='0.00'

select ename, salary from Empl_details  where NOT salary between 2500.00 and 4000.00 ;

Select ename,job,salary where NOT job='MANAGER';

Select * from Empl_details where ename LIKE '__A%';

Select * from Empl_details where ename LIKE '%T';

