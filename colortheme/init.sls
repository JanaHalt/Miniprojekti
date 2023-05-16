# Check parent directory
/home/janahalt/.local/share/konsole:
  file.directory:
    - user: janahalt
    - group: janahalt
    - dir_mode: "0755"
    - file_mode: "0644"
    - makedirs: True

# Copy profile file
/home/janahalt/.local/share/konsole/Solarised.profile:
  file.managed:
    - source: salt://colortheme/Solarised.profile
    - user: janahalt
    - group: janahalt
    - mode: "0644"

# Set profile as default
/home/janahalt/.config/konsolerc:
  file.managed:
    - source: salt://colortheme/setdefault
    - user: janahalt
    - group: janahalt
    - mode: "0644"
