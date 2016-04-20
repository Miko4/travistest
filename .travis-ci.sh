echo Y|sudo apt-get  install opam darcs git
opam init
eval `opam config env`
opam switch install 3.10.2
opam install omake

ocaml test.ml
