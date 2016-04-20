echo Y|sudo apt-get  install  darcs git

# opam from debian is too old


wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin
opam init
eval `opam config env`
opam switch install 3.10.2
opam install omake

ocaml test.ml
