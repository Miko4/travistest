#echo Y|sudo apt-get  install  darcs git

# opam from debian is too old


wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin
yes Y|opam init
eval `opam config env`
yes Y|opam switch install 3.10.2
yes Y|opam install omake

ocaml test.ml
