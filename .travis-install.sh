wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin

yes Y|opam init
eval `opam config env`
opam switch -y  install 3.10.2
opam install -y omake
