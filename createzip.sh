#!/bin/bash

tarname=tikz-palattice

mkdir $tarname
for f in tikz-palattice.sty Makefile tikz-palattice_documentation.{tex,pdf} example*.tex elsa.tex
do
    cp $f $tarname/
done

zip -r $tarname.zip $tarname

rm -r $tarname
