#!/bin/bash

for file in *.tex; do xelatex "$file"; done
for file in *.pgf; do xelatex "$file"; done
