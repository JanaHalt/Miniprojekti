# Create alias for sudo dnf update
  /etc/bashrc:
    file.managed:
      - source: salt://Miniprojekti/alias/bashrc
      - mode: "644"

