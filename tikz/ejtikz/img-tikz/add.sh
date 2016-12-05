#!/bin/bash
cartella="./images-tikz/"
rm  *.tex &> /dev/null
rm -R _minted-* &> /dev/null
echo -E "% PGF style template to be used in the ktikz program
\documentclass[]{article}
%\documentclass[preview]{standalone}
\usepackage[utf8]{inputenc} 
\usepackage[upright]{fourier}
\usepackage[usenames,dvipsnames,svgnames]{xcolor}
\usepackage{sansmath}
\usepackage{tikz,xcolor}
\usepackage{pgfplots}
\usetikzlibrary{shadings,intersections}
\usetikzlibrary{calc,patterns,angles,quotes}
\usepackage{amsmath,tkz-fct}
\usepackage{tkz-euclide}
\usetkzobj{all}
\usetikzlibrary{shapes.emoticon}
\usetikzlibrary{bending}
\usetikzlibrary{calc}
\usetikzlibrary{arrows.meta}
\usepackage{relsize}
\usepackage[active,tightpage,sections]{preview}
\usepackage{verbatim}
\usepackage{currfile}
%%%>
\PreviewEnvironment{tikzpicture}
\setlength\PreviewBorder{20pt}   
\PreviewEnvironment[]{pgfpicture}
 \pgfplotsset{width=10cm,compat=1.9}
\pagestyle{headings}
\\begin{document}
\markboth{\jobname}{\jobname}" > ../template_example10.tex

 find -name "*.tex"|while read file; do  echo   "\section{$file}\input{$file} " >> ../template_example10.tex  ;done
find -name "*.pgf"|while read file; do  echo   "\section{$file}\input{$file} " >> ../template_example10.tex  ;done
 echo  "\end{document}" >> ../template_example10.tex ;
pdflatex -shell-escape  ../template_example10.tex
rm  *.tex *.err *.nav *.snm *.out *.vrb *.py *.dvi *.ps *.eps */*.eps *.aux */*.aux *.log *.toc *.mtc* *.synctex.gz *.ptc *.idx *.maf *.bbl *.thm *.dep *.gz *.listing *concordance.tex *.table *.gnuplot &> /dev/null
 
