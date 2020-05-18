#!/bin/bash
 
if [ $# -lt 1 ]; then
   echo "Faltou especificar o arquivo .tex"
   exit 1
fi

if [ $# -gt 2 ]; then
   echo "Varios argumentos de entrada, selecione apenas o arquivo .tex"
   exit 1
fi

pdflatex $*
pythontex $*
pdflatex $*
bibtex $*
pdflatex $*
pdflatex $*
