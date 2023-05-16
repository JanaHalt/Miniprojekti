# Create alias for sudo dnf update
/etc/bashrc:
  file.managed:
    - source: salt://alias/bashrc
    - mode: " 644"

