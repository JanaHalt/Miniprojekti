## Työympäristö  

Toteutin projektin VirtualBoxissa kahdella virtuaalikoneella, joihin asensin Fedora 38:n KDE-ympäristöllä.

Rautana kannettava näillä spekseillä:  
```
- CPU AMD Ryzen 7 4700U, Radeon Graphics, 2,00 GHz; RAM 16 Gt  
- Windows 11 Home, 64-bit  
```  

### Asennettavat ohjelmat ja muut suunnitellut muutokset:  
- Neovim
- Aisleriot-3.22.21-3.fc38 - korttipeli, yksi suosikkipeleistäni stressinpoistoon :)
- .bashrc.d konfaukset / aliakset 1-2 kpl  // varmista tiedostopolku
- konsolin säätöjä / esim. oletusväriteeman muutos  
- yakuake konsoli  

Päädyin edellä mainittuihin ohjelmiin siksi, että ne on minulle sellaisia, joiden haluan olevan kunnossa kun alan käyttää uutta/uudelleenasennettua konetta. Toteutan projektin siten, että ensin teen muutoksia ja asennan ohjelmia käsin master-koneelle ja automatisoin ne orja-koneelle asennusta varten.  

## Valmistelu  

Aloitin sillä, että asensin kahdelle virtuaalikoneelle Fedora 38:n. Seuraavaksi asensin yhdelle salt-masterin ja toiselle salt-minionin. Salt-masterin ja -minionin asennuksessa seurasin tätä ohjetta: <a href="https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/fedora.html">Salt-project - Install Salt on Fedora</a>:   

- Ensin ajoin molemmille koneille päivitykset käyttäen komentoa ```sudo dnf update```  
- Asensin saltin: ```sudo dnf install salt-master -y``` ja ```sudo dnf install salt-minion -y```  
- Enabloin ja käynnistin salt-master & -minion palvelut: ```sudo systemctl enable salt-master && sudo systemctl start salt-master``` ja ```sudo systemctl enable salt-minion && sudo systemctl start salt-minion```  
- Kerroin orja-koneelle, mistä osoitteesta se tavoittaa master-koneen. Orja-koneella, kansiossa **/etc/salt/minion.d/**: ```sudoedit master.conf``` ja luotuun tiedostoon (master.conf) ```master [ip-osoite]```.  
- Käytin komentoa ```sudo salt-key -A``` ja hyväksyin orjan **jhminion** avaimen  
- Testasin komennolla ```sudo salt 'jhminion' test.ping```, että yhteys toimi:  
![yhteysorjaan1](https://user-images.githubusercontent.com/78509164/236862521-92b6d5e0-1553-4d7d-a250-62dea75a1a9a.png)  

## Neovim  

Aloitin asentamalla Neovim käsin master-koneelle ```sudo dnf install neovim``` ja sen jälkeen ohjelmaa pystyy käynnistämään komennolla ```nvim```.  Koska halusin toteuttaa testausta aina mahdollisimman pieni osuus kerrallaan, niin jatkoin luomalla salt-tilan, jolla asentaisin **neovim**in orja-koneelle.  
Kansioon ```/srv/salt``` loin uuden kansion ```/neovim```, johon lisäsin tiedoston ```init.sls```:  

![neovim3](https://github.com/JanaHalt/ServerManagement_project/assets/78509164/ecc4fce7-7149-453a-8bc7-62c008e26cbd)  

Tämän jälkeen ajoin tilan orja-koneelle komennolla ```sudo salt 'jhminion' state.apply neovim``` ja sain onnistuneen lopputuloksen:  

![neovim1](https://github.com/JanaHalt/ServerManagement_project/assets/78509164/0669d9a9-505e-4894-9082-ba6add34365d)  

![neovim2](https://github.com/JanaHalt/ServerManagement_project/assets/78509164/093a75a1-f390-4249-a77a-3c7da1dca3b6)  

Sitten vielä menin orja-koneelle ja testasin käynnistyykö asennettu ohjelma kirjoittamalla komentoriville ```nvim```:  

![neovim4](https://github.com/JanaHalt/ServerManagement_project/assets/78509164/b461bfa2-c402-4514-9b37-157f79853757)  


Seuraavaksi piti luoda konfigurointitiedosto, jolla voisin sitten sitten konfata Neovimin erilaisia ominaisuuksia. Loin tiedoston ```init.vim``` polkuun ```~/.config/nvim/```. Halusin, että Neovimin kirjoitustilassa olisi vasemmalla näkyvissä rivinumerot, joten lisäsin edellä mainittuun tiedoston tekstin ```set number```. Ja voilá, nyt rivinumerot näkyy:  

[tähän tulee kuva neovim5.png]  

Ensin kopioin neovimin konfigurointitiedoston polkuun ```/srv/salt/neovim``` komennolla ```sudo cp ~/.config/nvim/init.vim```. Tarkistin, että kopiointi onnistuin komennolla ```ls /srv/salt/neovim```.  

[tähän tulee kuva neovim6.png]

 Tämän jälkeen muokkasin ***neovim***-tilaa, jotta voisin ajaa halutun konfigurointimuutoksen myös orja-koneelle. Eli neovim-tilassa olevaan init.sls tiedostoon lisäsin:  
 
```
#show row-numbers  
   /usr/share/nvim/sysinit.vim:
     file.managed:
       - source: salt://neovim.init.vim  
       - mode: "644"  
```  

Mode 644 tarkoittaa, että tiedoston omistajalla on luku- ja kirjoitusoikeus ja ryhmällä sekä muilla on vain lukuoikeus. Sitten ajoin tilan orja-koneelle komennolla ```sudo salt 'jhminion' state.apply neovim``` ja sain onnistuneen tuloksen:  

[tähän tulee kuva neovim7kopio.png]  

Testasin vielä, että **Neovim** orja-koneella käynnistyy siten, että rivinumerot näkyy:  

[tähän tulee kuva neovim8.png]  


## .bashrc


### Lähteet  
https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/fedora.html  
