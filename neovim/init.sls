# Install neovim
neovim:
  pkg.installed

# Show row-numbers
/usr/share/nvim/sysinit.vim:
  file.managed:
    - source: salt://Miniprojekti/neovim/init.vim
    - mode: "0644"
