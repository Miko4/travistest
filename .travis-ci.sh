sudo apt-get  install opam hg darcs git
opam init
eval `opam config env`
opam switch install 3.10.2
opam install omake

ocaml test.ml
