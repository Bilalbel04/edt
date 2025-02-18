### 1. Gabinet d'advocats  

Es vol dissenyar una base de dades relacional per a emmagatzemar informació
sobre els assumptes que porta un gabinet d'advocats.
- Cada assumpte té un número d'expedient que l'identifica i correspon a un sol
client.
- De l'assumpte s'ha d'emmagatzemar la data d'inici, data d'arxiu (finalització)
, el seu estat (en tràmit, arxivat, etc), així com les dades personals del
client al qual pertany (DNI, nom, adreça, telèfon).
- Alguns assumptes són portats per un o diversos procuradors i viceversa, dels
quals ens interessa també les dades personals (DNI, nom, adreça, telèfon).
---

### 2. Zoos  
Es vol dissenyar una base de dades relacional per emmagatzemar informació relativa als zoos existents en el món, així com les espècies i animals que aquests alberguen.
- De cada zoo es vol emmagatzemar el seu codi, nom, la ciutat i país on es troba, mida (m2) i pressupost anual.
- Cada zoo codifica els seus animals amb un codi propi, de manera que entre zoos es pot donar el cas que es repeteixi.
- De cada espècie animal s'emmagatzema un codi d'espècie, el nom vulgar, el nom científic, família a la qual pertany i si es troba en perill d'extinció.
- A més, s'ha de guardar informació sobre cada animal que els zoos tenen, com el seu número d'identificació, espècie, sexe, any de naixement, país d'origen i continent.
---

### 3. Gestió de projectes

Es desitja dissenyar una base de dades que reculli la informació sobre la gestió de projectes que es porta a terme a l'empresa i la participació dels empleats. De cada empleat necessitarem saber el seu DNI, nom, adreça, telèfon i projecte en el qual participa. Cada projecte s'identificarà per un codi que serà únic, tindrà un títol, una durada estimada, una durada real, un pressupost.

De cada projecte es vol saber qui és l'empleat director del projecte. A vegades passa que la mateixa persona pot dirigir diferents projectes.

Cada empleat està assignat a un únic departament que s'encarregarà d'unes tasques determinades dins de l'empresa. Del departament de vol conèixer el nom.

Es vol saber de cada empleat qui és el seu cap en cas que el tingui. Modificar l'esquema anterior per recollir els nous requeriments d'usuari (aquest requeriment no l'he explicat a classe però el teniu explicat als apunts).

Es demana l'esquema E/R amb les seves entitats, atributs i interrelacions ben descrites, això inclou que determineu les claus primàries més adients.
---

### 4. Carreteres

Dissenyar una base de dades que contingui informació relativa a totes les carreteres d'un determinat país. Es demana realitzar el disseny en el model E/R, sabent que:
- En aquest paıs les carreteres es troben dividides en trams.
- Un tram sempre pertany a una única carretera i no pot canviar de carretera.
- Un tram pot passar per diversos termes municipals, sent una dada d'interès al km. del tram pel qual entra en dit terme municipal i al km. pel qual surt.
- Hi ha una sèrie d'àrees en les que s'agrupen els trams, cada un dels quals no pot pertànyer a més d'una àrea.
---

### 5. Metro de Barcelona
Es demana implementar el model E/R que reflecteixi tota la informació necessària per a la gestió de les línies de metro d'una determinada ciutat. Els supòsits semàntics considerats són els següents:
- Una línia està composta per una sèrie d'estacions. De la línia volem saber el codi (L1, L2, etc) i el nom (Linia vermella, línia morada) i així respetivament.
- Cada estació pertany almenys a una línia, podent pertànyer a diverses. Un exemple sería  l'`estació La Sagrera`, on la L1 (línia vermella) i la L5 (línia blava) comparteien aquesta estació.
- Una estació ha pogut canviar de línia o línies en el temps, de manera que una estació actualment pertanyi a una linia però en el passat ha format part d'altra línia. Per exemple, donat un moment de la història recenta de Barcelona, va haver-hi un canvi d'estacions entre la L2 i L4. Interessarà saber doncs la data des de quan una estació ha format part d'una línia en concret i quan ha deixat de formar part.
- Cada estació pot tenir diversos accessos, però considerem que un accés només pot pertànyer a una estació.
- Un accés mai podrà canviar d'estació.
- Cada línia té assignats una sèrie de trens, no podent succeir que un tren estigui assignat a més d'una línia, però sí que no estigui assignat a cap (p. Ex., Si es troba en reparació).
- Algunes estacions tenen assignades cotxeres, i cada tren té assignada sempre una cotxera.
- Interessa conèixer tots els accessos de cada línia. De cada accés, a part del codi i nom, voldrem saber si hi té ascensor.

Ampliació:

- De cada estació ens interessa saber quina posició ocupa a dintre de la línia segons el sentit. Així doncs, per l'`estació Sagrera` tenim el següent:
  - per a la **L1** direcció _Fondo_ `Sagrera` ocupa el lloc 23 però si és sentit _Bellvitge_ ocupa el lloc 8.
  - per a la **L5** direcció _Cornellà Centre_  `Sagrera` ocupa el lloc 9 però si és direcció _Vall d'Hebron_ ocupa el lloc 18.
  ---

  ### 6. Museus

  Una persona amant de l'art vol construir una base de dades de museus del món i les obres d'art de cadascú. Per les limitacions del seu equip informàtic (i les seves pròpies) va considerar únicament pintures i escultures.

  - Per la informació de què disposa, pot saber en quin museu està cada obra d'art i, a més es coneix la sala del museu en la qual està l'obra. Les sales dels museus tenen un nom i pot haver sales amb mateix nom en diferents museus.
  - Com a aficionat a la matèria que és, sap que tota obra d'art té un títol.
  - Altres dades són específics del tipus d'obra d'art que consideri: pintura o escultura. Així, de les pintures es coneix el seu format de anchoxalto i el tipus de pintura (oli, pastel, aquarel·la, ...). De les escultures es considera el material amb què estan fetes (bronze, ferro, marbre, ...) i l'estil de l'escultura (neoclàssica, grecoromana, cubista, ...).
  - Li interessarà també, conèixer els autors de les obres. Les dades generals dels autors seran el seu nom i nacionalitat. Com és natural, hi ha obres d'art de les que es desconeix l'autor.
  - Dels museus recollirà la següent informació: el nom del museu, direcció amb el nom del carrer i el número, a més de la ciutat i el país on està.
D'algunes obres d'art no es coneix la sala, només el museu.

Hi ha exposicions itinerants, composades per obres d'altres museus que es presten temporalment a un museu concret. Aquestes exposicions recorren el mon i van de museu en museu. Es vol recollir el títol de l'exposició, la data d'inici, la data de fi, per quin museu ha passat i quines obren la conformen.

Nota: establiu les claus primàries que considereu oportunes.

**Es demana un esquema conceptual, esquema lògic i diagrama referencial**

### 7. El cinèfil

Un cinèfil aficionat a la informàtica vol crear una Base de Dades que reculli informació diversa sobre el món cinematogràfic, des dels orígens del cinema fins a avui mateix, amb el contingut que es descriu a continuació.
Lògicament, vol tenir classificades moltes pel.lícules, que vindran identificades per un codi. També vol de cadascuna el nom, l’any de l’estrena, el pressupost, el director, etc. A més, de cada pel.lícula vol conéixer també quins actors van intervenir, així com el paper que hi representàven (actor principal, secundari, etc.) i el possible premi que va rebre per la seva interpretació.
Les pel.lícules són d’un tema determinat. Es ben sabut que hi ha actors especialitzats en un tema, encara que un actor és capaç d’interpretar varis temes amb diferent “habilitat”.
Com que el nostre cinèfil és una mica curiós, vol emmagatzemar també dades personals dels actors, que ha anat recollint al llegir revistes del món artístic. Per exemple, quins actors són en certa manera substitutius d’altres, amb un grau de possible substitució que pot anar de 1 a 10. També quins actors són “incompatibles”, o sigui, que mai han treballat ni treballaran junts amb una mateixa pel.lícula o escena.
Els actors estan contractats, en un moment donat per una companyia, però poden canviar si tenen una oferta millor. També poden retornar a una companyia en la que ja hi  havien treballat. Les companyies produeixen pel.lícules, però cap pel.lícula és coproduïda per dues o més companyies.
Com que el nostre amic fa molt de turisme, vol saber, per a cada ciutat, quines companyies hi tenen representació i a quina adreça. Evidentment, les companyies solen tenir representació a quasi totes les ciutats importants. Al mateix temps, vol també informació de quines pel.lícules s’estan rodant a cada ciutat i en quin moment, tenint en compte que una pel.lícula es pot rodar a vàries ciutats i també a una mateixa ciutat en diferents fases del seu rodatge.

Qüestions

1. Proposeu un esquema entitat-relació per a la BD en qüestió. Identifiqueu clarament entitats, atributs i relacions.
2. Proposeu un esquema lògic relacional equivalent amb el seu corresponent diagrama referencial.
