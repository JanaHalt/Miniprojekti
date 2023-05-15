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
