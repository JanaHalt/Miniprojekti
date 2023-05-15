# Install golang  
golang:  
  pkg.installed  

# Create workspace  
~/$HOME/go:  
  file.directory:  
    - user: janahalt  
    - group: janahalt  
    - dir_mode: "0755"  
    - file_mode: "0775"
    - makedirs: True  
