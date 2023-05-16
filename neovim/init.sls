# Install neovim
neovim:
  pkg.installed

# Show row-numbers
/usr/share/nvim/sysinit.vim:
  file.managed:
    - source: salt://neovim/init.vim
    - mode: "0644"
