# Miniprojekti  

Tämä on Palvelintenhallinnan kurssin <a href="https://terokarvinen.com/2023/palvelinten-hallinta-2023-kevat/">Palvelinten Hallinta 2023 kevät</a> loppuprojekti.  
________________________________________  

Tämän moduulin tarkoitus on tehdä uuden tai uudelleenasennetun koneen käytöstä mukavampaa. Valinnat on tehty omieni konfigurointimieltymykseni mukaan.  

Valitsin tähän moduuliin seuraavat:  
- Neovim tekstieditorin asennus ja sen konfigurointi  
- .bashrc:n konfigurointi - aliaksen luominen  
- konsolin konfigurointi - oletusväriteeman muutos  
- GO tools - Go-ohjelmointikielen tarvitsemien työkalujen asennus  

Jokaiselle muutokselle tai asennukselle on oma Salt-tilatiedosto, mikäli halutaan toteuttaa vain yksittäisiä muutoksia. Loin kuitenkin myös top.sls tiedoston, jonka avulla voidaan toteuttaa kaikki muutokset ja asennukset kerralla.  

Toteutin tämän projektin kahdella VirtualBoxissa luodulla virtuaalikoneella, joilla oli asennettuna Fedora 38 workstation kde-ympäristöllä. Yksi virtuaalikone toimi tässä projektissa salt-masterina ja toinen salt-orjana.

Moduulin käyttöönotto: kloonaa tämä repository ja lisää se polkuun ```/srv/salt```.  

### HUOM!  

Vaihda tiedostoissa ```golang/init.sls``` ja ```colortheme/init.sls``` ***janahalt***::n tilalle oma käyttäjänimi!

### Aikaisemmat harjoitukset ja linkki Palvelinhallinta-kurssiin 

<a href="https://github.com/JanaHalt/InfraAsCode/blob/3a0efe10fece61bdc1350247bb5709c70f993d51/h1-salt.md">H1 - Suolaa</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h2%20-%20Demonit.md">H2 - Demonit</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h3%20-%20Git.md">H3 - Git</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h4%20-%20Komennus.md">H4 - Komennus</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/546a5fbaee6336279941376184d8f9d9f4536db7/h5%20-%20Vaihtoehdot.md">H5 - Vaihtoehdot</a>  
<a href="https://github.com/JanaHalt/InfraAsCode/blob/3109d33c55a6f346d93c2af7e9d0bb73f2ed9fdc/h6%20-%20Puolikas.md">H6 - Puolikas</a>  
<a href="https://terokarvinen.com/2023/palvelinten-hallinta-2023-kevat/">Palvelinhallinta - kevät 2023</a>  

#### Lähteet  

https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/fedora.html

https://linuxize.com/post/how-to-create-bash-aliases/

https://builtin.com/software-engineering-perspectives/neovim-configuration

https://docs.kde.org/trunk5/en/konsole/konsole/profiles.html

https://forum.kde.org/viewtopic.php?f=22&t=29952

https://docs.saltproject.io/salt/user-guide/en/latest/topics/states.html#the-top-sls-file

https://developer.fedoraproject.org/tech/languages/go/go-installation.html

https://developer.fedoraproject.org/tech/languages/go/go-programs.html  

https://terokarvinen.com/2023/palvelinten-hallinta-2023-kevat/
