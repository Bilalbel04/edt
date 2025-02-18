# Objectius del tema

- Comprendre la funció de definició de dades
- Comprendre i aplicar els tipus de restriccions.
- Crear taules amb les seves pròpies restriccions (CREATE TABLE)
- Esborrar i modificar les taules (drop TABLE i alter TABLE)
- Tenir la capacitat d'entendre els errors (derivats d'un ús incorrecte del SQL) i de solucionar-los.
- Ser capaç d'implementar amb SQL els esquemes lògics realitzats a classe.

# Llenguatge de definició de dades (DDL)
- Llenguatge d'un SGBD que permet "`definir`" (crear/modificar/esborrar) les estructures necessàries per gestionar una base de dades.  

- Les estructures (objectes) principals que manipularem seran:
    * Taules
    * Vistes
    * Índexs

- Les sentències SQL que usarem són:
  * CREATE (crea)
  * DROP (esborra)
  * ALTER (modifica)

# Taula

- És la unitat bàsica d'emmagatzematge amb una determinada estructura (camps) i un contingut (files).
- Regles per posar nom a una taula:
  - Han de començar per una lletra.
  - Poden tenir una longitud de 1-30 caràcters de llarg.
  - Han de contenir només A-Z, a-z, 0-9, \_
  - No han de duplicar el nom d'un altre objecte a dintre del mateix `esquema`
  - No ha de ser una paraula reservada del servidor de bases de dades.

# Tipus de dades habituals en PostgreSQL

  * VARCHAR (numbytes) => text
  * INT (4 bytes), SMALLINT (2 bytes), BIGINT (8 bytes) => números sencers
  * NUMERIC(E,D) => número amb part decimal fixa
  > Exemple: NUMERIC(5,2) va des de 000,00 fins a 999,99
  * BOOLEAN => true, false
  * DATE (dia,mes any), TIMESTAMP (dia,mes any, hores, minuts, segons)

# Accedir al sistema gestor de bases de dades PostgreSQL

Els serveis de bases de dades segueixen l'arquitectura client-servidor
El servidor de bases de dades (PostgreSQL, alias postgres) està "esperant" peticions
dels clients (en el nostre cas el client és `psql`)
Per accedir al servidor postgres, utilitzo el client i li passo com argument el nom
d'una base de dades. Template1 és la base de dades per excel·lència de postgres, una
base de dades especial, com ja us explicaré a classe.

```
$ psql template1 #Base de dades per defecte
```

# Ordres de psql vs ordres SQL

* Les ordres del client psql comencen per \\ i no porten ";"
* Les sentències (ordres) SQL acaben per un ";"

Algunes de les ordres de psql són:

Opció|Explicació
-|-
\l |  `l`lista les bd que hi ha al servidor
\c base_dades | canvia la base de dades a base_dades
\d | (`d`isplay) mostra els objectes que hi ha a la base de base_dades
\dt| (`d`isplay `t`ables)
\d nom_taula| mostra l'estructura de nom_taula, inclús els seus triggers
\dv|mostra les vistes
\d nom_vista| mostra l'estructura de nom_vista, inclús els seus triggers
\ds|mostra les seqüències
\dn|mostra esquemes
\di|mostra els index


Important: postgres a les taules els hi diu "relations"

# Creació d'una base de dades

Per crear una base de dades i les seves taules:

```
  CREATE DATABASE base_dades;  -- crea una BD
  \c  base_dades               -- canvia a ella per poder manipular-la

-- Creació de taules

CREATE TABLE nom_taula (  
  camp1 `tipo_de_dades` [restricció a nivell de camp ],  
  camp2 `tipus_de_dades` [restricció a nivell de camp],  
  ...  
  [restricció/ns a nivell de taula]  
);

-- Exemple:


CREATE TABLE empleat(
  empno  SMALLINT,
  ename  VARCHAR(10),
  CONSTRAINT emp_empno_pk PRIMARY KEY (EMPNO)
);
```

# Què són les Constraints (restriccions)?

Són regles que s'apliquen sobre les taules i que el SGBD s'encarrega de verificar abans de cada operació DML.

Les constraints definiran el contingut i comportament de les taules davant les operacions DML (insert, update, delete)

Hi ha 5 tipus de restriccions. Les més importants són les de clau primària i clau aliena.

- PRIMARY KEY (clau primària)
- FOREIGN KEY (clau aliena)
- NOT NULL (no nul)
- UNIQUE (valor únic)
- CHECK (comprova que el camp acompleixi una condició)

# Convenció per posar el nom a una restricció (CONSTRAINT)

Per crear una restricció a nivell de camp, es fa de la següent manera:
```
camp   tipus_dades  CONSTRAINT nom_constraint tipus_constraint
```
On el nom_constraint seguirà **obligatòriament** el següent format:  

nomtaula_nomcamp_XX, on XX serà: pk, fk, nn, uk, ck.


* Exemple:
```
CREATE TABLE DEPT (
  deptno SMALLINT  CONSTRAINT dept_deptno_pk PRIMARY KEY,
  dname VARCHAR(14),
  loc VARCHAR(13),
  CONSTRAINT dept_dname_uk UNIQUE(dname)
);
```


# PRIMARY KEY

- Restricció que s'aplica als camps que són clau primària (CP)
- Impedeix que s'insereixin valors repetits o nuls
- Quan la CP és simple, es pot definir a nivell de camp (al costat del tipus de dades) o a nivell de taula (al final de la definició de la taula).
- Quan sigui composta, serà obligatori a nivell de taula (al final de la definició)


# Exemple de PRIMARY KEY

Exemple d'implementació en SQL la relació `dept` d'un esquema lògic:

dept(<ins>deptno</ins>, dname,loc)
```
-- CP simple, definida a nivell de camp
CREATE TABLE dept (
  deptno 	INTEGER CONSTRAINT dept_deptno_pk PRIMARY KEY,
  dname	VARCHAR(14),
  loc	VARCHAR(13)
);

-- CP simple, definida a nivell de taula
CREATE TABLE dept (
  deptno SMALLINT,
  dname  VARCHAR(14),
  loc VARCHAR(13),
  CONSTRAINT dept_deptno_pk PRIMARY KEY(deptno)
);

--CP composta (obligatori declarar-la a nivell de taula)
CREATE TABLE producto
(
	fabcod	 VARCHAR2(3) ,
	prodcod	 VARCHAR2(5) ,
	descrip	 VARCHAR2(25) NOT NULL,
	precio	 NUMERIC(6,2) NOT NULL,
	exist	   NUMERIC(3),
	CONSTRAINT producto_pk PRIMARY KEY(fabcod,prodcod),
	CONSTRAINT producto_exist_ck CHECK(exist>0),
	CONSTRAINT producto_fabcod_ck CHECK(fabcod=UPPER(fabcod)),
	CONSTRAINT producto_prodod_ck CHECK(prodcod=UPPER(prodcod))
);
```
# CONSTRAINT FOREIGN KEY(FK)

* Serveix per identificar la clau aliena (en endavant CA) i permetre recuperar
informació a través d'elles i els JOINS
* Si la CA és simple, es pot definir a nivell de camp o a nivell de taula
(opció recomanda al final de la taula)
* Si la CA és composta, només es podrà definit a nivell de taula

# Exemples de FOREIGN KEY

```
-- CA simple, a nivell de taula (recomanada)

CREATE TABLE emp
       (empno NUMERIC(4) CONSTRAINT emp_pk PRIMARY KEY,
        ename CHARACTER VARYING(10),
        job CHARACTER VARYING(9),
        mgr NUMERIC(4),
        hiredate DATE,
        sal NUMERIC(7, 2),
        comm NUMERIC(7, 2),
        deptno smallint,
        CONSTRAINT emp_deptno_fk  FOREIGN KEY (deptno) REFERENCES dept(deptno)
);

-- CA simple, a nivell de camp

CREATE TABLE emp
       (empno NUMERIC(4) CONSTRAINT emp_pk PRIMARY KEY,
        ename CHARACTER VARYING(10),
        job CHARACTER VARYING(9),
        mgr NUMERIC(4),
        hiredate DATE,
        sal NUMERIC(7, 2),
        comm NUMERIC(7, 2),
        deptno smallint CONSTRAINT emp_deptno_fk REFERENCES dept(deptno)
);
```

# L'opció DEFAULT per donar valor per defecte a un camp

Es pot especificar un valor per defecte per a un camp, de manera que quan es realitzi l'inserció d'una fila sense valor per a aquest camp, prendrà el que estigui definit per defecte.

Exemple
```
CREATE TABLE emp (
  ...
  hiredate DATE DEFAULT CURRENT_DATE,
  ...
);
```
# Exercici: Gabinet d'advocats

Creeu un fitxer que es digui gabinet.sql i passeu a SQL la següent relació:

Client(DNI, Nom, Adreca, Telefon)

- Les claus primàries seran numèriques o alfanumèriques.

- Per als camps text Nom i Adreca les longituds seran  20 i 40 respectivament.

- Els tipus de dades dels altres camps els decidiu vosaltres per sentit comú.


# CONSTRAINT  NOT NULL

- S'utilitza per assegurar que un camp tindrá valor obligatòriament.
- Es defineix només a nivell de camp.

Exemple:
```
CREATE TABLE emp(
  ...
  ename	VARCHAR2(10) CONSTRAINT emp_ename_nn NOT NULL,
  ...
);
```

# CONSTRAINT  UNIQUE

- Serveix per assegurar que el valor d'un camp no es pugui repetir en cap fila de la taula.  
- Admet nuls, a diferència de la CONSTRAINT PRIMARY KEY.  
- Es pot definir a nivell de camp o de taula.  

Exemple:
```
CREATE TABLE dept(
  ...
  dname	VARCHAR(14),
  loc	VARCHAR(13),
  CONSTRAINT dept_dname_uk UNIQUE(dname)
);
```

# CONSTRAINT CHECK

- Serveix per assegurar-nos que un camp acompleix una condició.
- Es pot definir a nivell de camp o de taula.

Exemple:
```
CREATE TABLE producto (
  ...
  exist SMALLINT,
  CONSTRAINT CK_PRODUCTO_EXIST CHECK(exists > 0),  
  CONSTRAINT CK_PRODUCTO_FABCOD CHECK(FABCOD=UPPER(FABCOD)),
  CONSTRAINT CK_PRODUCTO_PRODCOD CHECK(PRODCOD=UPPER(PRODCOD))
);
```

Esborrar una taula

Per esborrar una taula, s'utilitza el comandament drop TABLE.

Exemple:
```
DROP TABLE emp;
```
Si s'intenta esborrar una taula que està éssent referenciada, no deixarà

(

integritat referencial

)

. He d'esborrar primer la taula de la part n abans de la taula de la part 1

.

Exemple cas Training:

Intenteu esborrar la taula Cliente. Què passa?

Intenteu esborrar Pedido. Us ha deixat?

Torneu a intentar esborrar Cliente. Podeu? Per què?




# Continuació de l'exercici (II)

Acabeu d'implementar les tres relacions que manquen (Asumpte, Procurador i AsumptexProcurador) tenint en compte el següent:

S'ha de definir una check pel camp estat, ha de ser un dels valors 'O' (de obert) ó 'T' (tancat).

De cada taula, al menys haureu d'espeficar un camp amb la CONSTRAINT not null (evidentment, si és clau primària ja no cal).

El nom del procurador tindrà una CONSTRAINT unique.

Els tipus de dades els decidiu vosaltres, així com la longitud.

La definició de les taules haurà d'estar  dins del fitxer gabinet.sql que haureu de lliurar abans del  termini marcat al moodle.





Comportament de les claus alienes

https://www.postgresql.org/docs/9.6/static/ddl-constraints.html

1. Cascade

2. Restrict

3. Set null

Per les operacions:

UPDATE

DELETE




# Continucació exercici (III)

Quan esborri un client, el assumtes relacionats es quedaran sense referència.

Podré esborrar un procurador si no hi té assumptes.

Si esborrem un assumpte, esborrarem tota la informació relacionada.

Si modifico un codi d’assumpte, dni de procurador o de client, es voldrà que es propagui.


# Excepcions a l'hora de posar restriccions

- `La majoria` de les restriccions es poden posar a nivell de camp (al costat de la definició del camp) o a nivell de taula (al final de la definició de la taula).

- <ins> Només a nivell de taula </ins>
  - Serà obligarori quan PRIMARY KEY/FOREIGN KEY siguin compostes.

- <ins> Només a nivell de camp </ins>
  - CONSTRAINT not null.


ALTER

modificar estructures

ALTER TABLE X ADD CONSTRAINT ....

ALTER TABLE X DROP CONSTRAINT nom_restricció ....

ALTER TABLE X ADD camp tipus_dades;

ALTER TABLE X DROP COLUMN camp;

ALTER TABLE X ENABLE|DISABLE CONSTRAINT Y;
