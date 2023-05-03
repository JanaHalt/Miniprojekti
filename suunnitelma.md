## Fedora 38 workstation  

Tästä koneesta tulee master. Asennetaan siihen seuraavia ohjelmia:  
- kmahjong-22.12.3-1.fc38  
- aisleriot-3.22.21-3.fc38  
- Pencil2D.x86_64  
- ssh  

### SSH  

Aloitin sillä, että tarkistin mikä on sshd:n tila defaultina. Käytin komentoa sudo systemctl status sshd. Tuloksena sain, että se on ```inactive```. 
