#!/bin/sh

## build and install precedure
make clean
./configure -prefix "$(pwd)/_install_ci"
make dunestrap
dune build -p coq-core,coq-stdlib,coq,coqide-server,coqide
dune install --prefix="$(pwd)/_install_ci" coq-core coq-stdlib coq coqide-server coqide
