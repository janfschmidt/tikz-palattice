#!/bin/bash

zipname=tikz-palattice

mkdir $zipname
for f in tikz-palattice.sty Makefile README tikz-palattice_documentation.{tex,pdf} example*.tex elsa.tex
do
    rsync -a $f $zipname/
done

zip -r $zipname.zip $zipname

rm -r $zipname
