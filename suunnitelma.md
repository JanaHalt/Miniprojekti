## Työympäristö  

Toteutin projektin VirtualBoxissa kahdella virtuaalikoneella, joihin asensin Fedora 38:n KDE-ympäristöllä.

Rautana kannettava näillä spekseillä:  
```
- CPU AMD Ryzen 7 4700U, Radeon Graphics, 2,00 GHz; RAM 16 Gt  
- Windows 11 Home, 64-bit  
```  

### Asennettavat ohjelmat ja muut suunnitellut muutokset:  
- ssh  
- kmahjongg-22.12.3-1.fc38 - suosikkipelini stressinpoistoon :)  
- aisleriot-3.22.21-3.fc38 - korttipeli, toinen suosikkipelini stressinpoistoon :)
- Minder-ohjelma mindmappien tekemiseen  
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


## SSH  

Tarkistin, mikä on OpenSSHn tila master- ja orja-koneilla komennolla ```sudo systemctl status sshd```. Kummallakin sain samanlaisen tuloksen, sshd löytyy, eli ei tarvitse asentaa erikseen, mutta sitä ei ole aktivoitu. Jatkoin sillä, että aktivoin sen master-koneella:  

- ```sudo systemctl enable sshd```  
- ```sudo systemctl start sshd```  
-  ja vielä tarkistus ```sudo systemctl status sshd```, josta nähdään, että sshd on up and running ja kuuntelee portilla 22. 
![sshd1](https://user-images.githubusercontent.com/78509164/237029370-d1e26c13-c6b9-4ad0-823e-d8232c5825f2.png)  


### Lähteet  
https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/fedora.html  
