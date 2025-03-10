\c template1
DROP DATABASE IF EXISTS scott;
CREATE DATABASE scott;
\c scott

CREATE SEQUENCE deptno_seq
  START WITH 50
  INCREMENT BY 10;

/* Creo la seqüència empno_seq amb valor d'inici 1 i increment de un en un */
CREATE SEQUENCE empno_seq;

CREATE TABLE dept (
deptNo SMALLINT  CONSTRAINT dept_pk PRIMARY KEY,
 dName VARCHAR(50),
   loc VARCHAR(50),
CONSTRAINT emp_uk UNIQUE(dname)
);

INSERT INTO dept VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO dept VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO dept VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE EMP (
   empNo SMALLINT CONSTRAINT emp_pk PRIMARY KEY,
   ename VARCHAR(100),
     job VARCHAR(100),
     mgr SMALLINT,
hiredate DATE,
     sal NUMERIC(7, 2),
    comm NUMERIC(7, 2),
  deptNO SMALLINT
);

CREATE OR REPLACE VIEW empleat AS
  	SELECT ename NomEmp, sal salari,job ofici, dname Nomdept, Loc Localitat
  	  FROM emp, dept
  	 WHERE emp.deptno = dept.deptno;

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902, TO_DATE('17-10-1980', 'DD-MM-YYYY'),  800, NULL, 20),
        (7499, 'ALLEN',  'SALESMAN',  7698, TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30),
        (7521, 'WARD',   'SALESMAN',  7698, TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30),
        (7566, 'JONES',  'MANAGER',   7839, TO_DATE('2-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20),
        (7654, 'MARTIN', 'SALESMAN',  7698, TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30),
        (7698, 'BLAKE',  'MANAGER',   7839, TO_DATE('1-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30),
        (7782, 'CLARK',  'MANAGER',   7839, TO_DATE('9-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10),
        (7788, 'SCOTT',  'ANALYST',   7566, TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20),
        (7839, 'KING',   'PRESIDENT', NULL, TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10),
        (7844, 'TURNER', 'SALESMAN',  7698, TO_DATE('8-09-1981', 'DD-MM-YYYY'),  1500,    0, 30),
        (7876, 'ADAMS',  'CLERK',     7788, TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20),
        (7900, 'JAMES',  'CLERK',     7698, TO_DATE('3-12-1981', 'DD-MM-YYYY'),   950, NULL, 30),
        (7902, 'FORD',   'ANALYST',   7566, TO_DATE('3-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20),
        (7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

  /* A la seqüència empno_seq li dono de valor d'inici el valor més gran que hi ha al camp empno
     El paràmetre TRUE vol dir que el valor que es generarà serà el següent al màxim
     L'increment per defecte és 1
  */

SELECT SETVAL('empno_seq', (SELECT MAX(empno) FROM emp), TRUE);

CREATE TABLE salgrade (
  grade SMALLINT,
  losal NUMERIC,
  hisal NUMERIC);

INSERT INTO salgrade VALUES
 (1,  700, 1200),
 (2, 1201, 1400),
 (3, 1401, 2000),
 (4, 2001, 3000),
 (5, 3001, 9999);

ALTER TABLE  emp ADD CONSTRAINT emp_deptno_fk FOREIGN KEY (deptno) REFERENCES dept;
ALTER TABLE  emp ADD CONSTRAINT emp_mgr_fk FOREIGN KEY (mgr) REFERENCES emp;

/* DML */

/* Inserir en la taula DEPT la informació corresponent a un nou departament 
de consultoria, de codi 50 i que estigui ubicat a SANTANDER. Per a l'ocasió 
creeu la seqüència deptno_seq (la qual començarà en 50 i s'incrementarà de 
10 en 10) i la utilitzeu per la sentència SQL. */

INSERT INTO dept VALUES (nextval('deptno_seq'), 'CONSULTORIA', 'SANTANDER');

/* Donar d'alta a un nou empleat de nom Andreu, que exercirà el lloc de 
analyst en el departament 30 i el seu cap serà l'empleat 8200. 
De moment es desconeixen els altres valors dels camps. */

INSERT INTO emp VALUES 
(nextval('empno_seq'), 'Andreu', 'ANALYST', 8200, NULL, NULL, NULL, 30);

/* Canviar la data de l'empleat SCOTT per la d'avui. */


/* Funciones de grupo */

/* 41. Calcula el salari total mensual */

SELECT SUM(sal) "Salari total mensual"
  FROM emp;

/* 42. Calcular el nombre de empleados que tienen comission i la media.
Mostrar todos los empleados de manera que pertenecen en vez del campo comm
puede tener nuls */

SELECT COUNT(comm) "Nombre empleados con comisión", AVG(comm) "Media comisión"
  FROM emp;

/* 43. Mostreu el salari, mínim i màxim dels empleats, agrupats per ocupació. */

SELECT job "Ocupació", MIN(sal) "SAL MIN", MAX(sal) "SAL MAX"
  FROM emp 
  GROUP BY job;