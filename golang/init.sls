# Install golang  
golang:  
  pkg.installed  

# Create workspace  
/home/janahalt/go:  
  file.directory:  
    - user: janahalt  
    - group: janahalt  
    - dir_mode: "0755"  
    - file_mode: "0775"
    - makedirs: True  
