#!/bin/sh

## build and install precedure
make clean
./configure
make dunestrap
dune build -p coq-core,coq-stdlib,coq,coqide-server,coqide
dune install coq-core coq-stdlib coq coqide-server coqide
