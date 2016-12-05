#!/bin/bash

for file in *.tex; do pdflatex "$file"; done
for file in *.pgf; do pdflatex "$file"; done
