# Tema 1

Introducció als sistemes gestors de bases de dades  

Jordi Andúgar  
jandugar@correu.escoladeltreball.org  

# Definicions

* Dada: fets, esdeveniments, transaccions, etc., que han estat emmagatzemades
* Informació: dades que han estat processades i comunicades de tal manera que poden ser enteses i interpretades
* Registre
* Fitxer
* Base de dades
* Sistema gestor de base de dades
* Redundància
* Consistència
* Integritat
* Independència lògico-fisica de les dades  
                    \+---------------\+        
    Dades   +-----> |  Processament | +----->    Informació  
                    +---------------+         
  
# Els inicis: sistema de Fitxers
Al principi, per emmagatzemar la informació del món empresarial es van utilitzar els sistemes de fitxers, els quals permetien emmagatzemar, processar i actualitzar informació.

# Característiques dels sistemes de fitxers

* Part de la informació sol estar replicada en diferents fitxers.
* El format d'emmagatzematge de les dades pot ser diferent en cada fitxer.
* Els programes són dependents de l'estructura física dels fitxers.
* Es poden crear i modificar sense necessitat de realitzar una planificació global.
* A simple vista semblen simples de manejar


#
![](./img/image1.png)

#
![](./img/image2.png)

# Inconvenients dels sistemes de fitxers

* Informació redundant => Malbaratament de l'espai de disc
*La integritat de les dades no està en els fitxers, està en els programes
  * \+ dependència= &gt;\+ problemes d'integritat
* La consistència de les dades no pot assegurar (no existeixen relacions)
* No hi ha una independència lògica-física, així que els programes s'han de modificar quan ocorri un canvi en l'estructura física d'un fitxer.
* Dificultat per processar consultes de propòsit molt específic
  * qualsevol consulta s'ha de programar
* Necessitat de reorganització del sistema d'emmagatzematge físic després de qualsevol canvi

# Sistema gestor de bases de Dades
![Sistema gestor de bases de Dades](./img/image3.png)


# Avantatges dels Sistemes de bases de dades

* Desapareix la redundància
  - Adeu a la inconsistència
  - Benvinguda la integritat de les dades
* Independència lògico-física:
Proporciona una separació entre la definició de l'estructura i l'emmagatzematge de les dades
  * Emmagatzemen restriccions (regles de validació) al diccionari de dades
  * Accés de la informació comú per totes les dades
  * No s'han de "programar" les consultes

# Inconvenients

* Són més cars, en termes de:
  - HW: Han de ser equips més potents.
  - SW: programes d'aplicació + SGBD
* Més complicats de dissenyar: el seu disseny requereix planificació realitzada per especialistes i costosa.
* Cal planificar procediments de còpies de seguretat per a recuperació davant errors del sistema.


# Base de dades

"Col·lecció o dipòsit de dades integrades, emmagatzemats en suport secundari (no volàtil) i sense redundància. Les dades, que han de ser compartits per diferents usuaris i aplicacions, s'han de mantenir independents d'aquells a seva definició (estructura de la BD) única i emmagatzemada juntament amb les dades, s'ha de donar suport a un model de dades, el qual ha de permetre copsar les interrelacions i restriccions existents en el món real. Els procediments d'actualització i recuperació, comuns i ben determinats, han de facilitar la seguretat del conjunt de les dades. "


# Sistema gestor de base de dades

Eina informàtica que inclou un conjunt coordinat de programes, utilitats, procediments, llenguatges, etc., que subministra als diferents tipus d'usuari dels mitjans necessaris per a descriure i manipular les dades emmagatzemades a la BD, garantint la seva seguretat.

# Funcions d'un SGBD

* DEFINICIÓ de dades (DDL)

Definir les estructures necessàries (vistes, taules i índexs)  per la gestió de la BD.

* MANIPULACIÓ de dades.

Permet afegir, suprimir o modificar les dades de la BD

* CONTROL de dades

permet definir la seguretat de la infomació emmagatzemada, els usuaris i les condicions sota les quals accediran a la BD (els rols i privilegis) així com els mecanismes de backup i restore


# Definició de dades

Permet descriure per a cada objecte:  
* Estructura  
* Interrelacions  
* Validacions, regles d'integritat  
* Característiques de tipus físic

A 3 nivells:  
* Extern  
* Lògic global  
* Intern

# Manipulació de dades

permet:  
* Afegir  
* Suprimir  
* Modificar  

La qual cosa suposa:  
* Definir un criteri de selecció  
* Definir l'estructura/es externa/es a ​​recuperar

# Control de dades

Reuneix totes les interfícies que necessiten els diferents usuaris per comunicar-se amb la BD.

Proporciona un conjunt de procediments perquè l'administrador (DBA) realitzi funcions de:

* Seguretat: còpies de seguretat, quan es reinicie, etc.
* Protecció: davant accessos no desitjats.

Funcions de servei:

* Obtenció d'estadístiques d'utilització.
* Carregar fitxers.
* Canviar capacitat dels fitxers de la BD ...


# Tipus d'usuaris d'una BD

* USUARIS INFORMÀTICS
  * DISSENYADORS
    * DISSENYADORS LÒGICS
    * DISSENYADORS FÍSICS
  * ADMINISTRADORS
  * ANALISTES i PROGRAMADORS
* USUARIS FINALS
  * HABITUALS
  * ESPORÀDICS

# Arquitectura ANSI/X3/SPARC

L'organització ANSI/X3/SPARC va presentar un Model de Referència contemplat des de tres punts de vista:

* Components que integren un SGBD
* Funcions que s'han d'especificar
* L'especificació de les dades que s'han de descriure i manipular.


![Arquitectura ANSI/X3/SPARC](./img/arquitectura_ANSI-X3_SPARC.jpg)

# Independència física i lògica de les dades.

* Una aplicació és depenent de les dades, quan l'estructura d'emmagatzematge i les tècniques d'accés estan dins de l'aplicació

* Cal que l'emmagatzematge i l'organització lògica de les dades estiguin separats
* L'emmagatzematge de les dades, la seva estructura lògica i els programes d'aplicació seran independents els uns dels altres
* D'aquesta es deriva la independència dades/aplicacions

# Models de dades i esquema
## Model de dades

* Eines que permeten descriure la realitat.

* Conjunt de conceptes, regles i convencions que permeten descriure les dades del món real, així com un conjunt d'operacions que permetin manipular-los  

## Esquema de dades
Representacions de la realitat.

> La qualitat d'un esquema es relaciona amb les propietats del model de dades (MD) i l'experiència dels programadors.

# Models de dades: Evolució

* Sistemes prerelacionals  
  * Model jeràrquic
  * Model de xarxa
* Sistemes relacionals  
  * Model relacional
* Sistemes postrelacionales
  - Lògic (deductiu)
  - orientat a objectes
  - documental
  - de clau-valor
  - multivalor
  - tabular
  - de graf
  - d'arrays
  - ...

# Model de dades jeràrquic

* L'estructura de dades és un arbre
* Quan la quantitat d'informació emmagatzemada a la BD és molt gran es converteix en immanegable.
* Es poden representar relacions jeràrquiques 1:N
* Les relacions M: N no es poden representar sense inserir redundància.

# Exemple de diagrama d'ocurrències (model jeràrquic)

![](./img/model_jerarquic1.png)

Què representa que un client pertanyi a diverses sucursals?
O que una compta tingui dos titulars?

# Exemple de diagrama d'ocurrències (model jeràrquic)

![](./img/model_jerarquic2.png)

# Exemple de SGBD basat en model jeràrquic

  * IMS/VS (1962)
(Information Management System / Virtual Storage)

> Va ser el primer producte d'IBM i la primera base de dades comercial.

# Model de xarxa

* Evolució natural del model jeràrquic  cap a estructura graf
* Es poden representar relacions M: N
* Planteja problemes amb pèrdua d'herència (informació que hi ha entre nivells del graf)
* Hi ha redundància, però menys que al model jeràrquic.

# Model de xarxa
![](./img/model_xarxa1.png)

# Model de xarxa
![](./img/model_xarxa2.png)


Als esquemes basats en xarxes pot desaparèixer l'herencia.  
De quina sucursal és el compte L3099? I el N4499?

# Model de xarxa
![](./img/model_xarxa3.png)

# Productes comercials

IDMS (Integrated Database Management System) de Computer Associates (1971).

# Model lògic relacional

* Codd (1970). La seva estructura és la relació
* L'estructura de dades bàsiques és la relació (taula en la pràctica)
* Una BD relacional es compon d'una col·lecció de relacions sense ordre.
* Cada relació s'associa a una entitat i es compon d'una sèrie d'atributs.
* Cada realització d'una relació es diu tupla (ocurrència en el model conceptual)
* No es permeten tuples duplicades en una relació.
* A cada atribut se li pot associar un domini que definirà el possible rang de valors.
* Els dominis defineixen una restricció sobre els atributs.
* La manipulació de les dades es realitza mitjançant Llenguatges d'especificació, de tal manera que l'usuari indica quines dades voleu sense especificar com obtenir-los.

# Model relacional
![](./img/model_relacional1.png)

# Exemple d'esquema relacional
![](./img/model_relacional2.png)

# Productes comercials

* INGRES ('70)(Interactive Graphics and Retrieval System)  
  * ACADÈMIC: Universitat de Berkeley  
  * COMERCIAL: d'Ingres Corporation (1980)  
* ORACLE (1979) (Oracle Corporation)
> primer SGBD relacional comercial, que suporta l'SQL com DDL i DML.
* [PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL) (1996)
