#!/bin/bash

set -e

function new_line {
    printf "%.0s=" {1..100}
    printf '\n'
}

pdflatex cascading-verification.tex
new_line

bibtex cascading-verification
new_line

pdflatex cascading-verification.tex
new_line

pdflatex cascading-verification.tex

rm cascading-verification.aux cascading-verification.blg cascading-verification.log

