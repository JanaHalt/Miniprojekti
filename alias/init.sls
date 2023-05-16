# Create alias
/etc/bashrc:
  file.managed:
    - source: salt://alias/bashrc
    - mode: "0644"

