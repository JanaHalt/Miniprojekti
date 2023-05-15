# Miniprojekti
Tämä on Palvelintenhallinnan kurssin <a href="https://terokarvinen.com/2023/palvelinten-hallinta-2023-kevat/">Palvelinten Hallinta 2023 kevät</a> loppuprojekti.  
________________________________________  

Tämän moduulin tarkoitus on tehdä uuden tai uudelleenasennetun koneen käytöstä mukavampaa.  

Valitsin tähän moduuliin seuraavat:  
- Neovim tekstieditorin asennus ja sen konfigurointi  
- .bashrc:n konfigurointi - aliaksen luominen  
- konsolin konfigurointi - oletusväriteeman muutos  
- GO tools - Go-ohjelmointikielen tarvitsemien työkalujen asennus  

Jokaiselle muutokselle tai asennukselle on oma Salt-tilatiedosto, mikäli halutaan toteuttaa vain yksittäisiä muutoksia. Loin kuitenkin myös top.sls tiedoston, jonka avulla voidaan toteuttaa kaikki muutokset ja asennukset kerralla.  

Moduulin voi ottaa käyttöön kloonaamalla tämän repositoryn ja lisäämällä ne (paitsi lisenssi- ja readme-tiedostot) polkuun ```/srv/salt```.  

### Aikaisemmat harjoitukset ja linkki Palvelinhallinta-kurssiin 

<a href="https://github.com/JanaHalt/InfraAsCode/blob/3a0efe10fece61bdc1350247bb5709c70f993d51/h1-salt.md">H1 - Suolaa</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h2%20-%20Demonit.md">H2 - Demonit</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h3%20-%20Git.md">H3 - Git</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h4%20-%20Komennus.md">H4 - Komennus</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h5%20-%20Vaihtoehdot.md">H5 - Vaihtoehdot</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/3109d33c55a6f346d93c2af7e9d0bb73f2ed9fdc/h6%20-%20Puolikas.md">H6 - Puolikas</a>  
<a href="https://terokarvinen.com/2023/palvelinten-hallinta-2023-kevat/">Palvelinhallinta - kevät 2023</a>
