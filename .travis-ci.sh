#echo Y|sudo apt-get  install  darcs git

# opam from debian is too old
# on travis-ci. Maybe on vexor.io not?
#sudo chmod 777 /usr/local/bin

#wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin
sudo apt-get install opam

yes Y|opam init
eval `opam config env`
opam switch install -y 3.10.2
opam install -y omake

ocaml test.ml
