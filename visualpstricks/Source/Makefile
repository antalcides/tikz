all: doc

doc:
	for datei in $$(ls *tex | cut -d \. -f 1) ; do make $$datei.dvi ; done
        
%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips $<

%.dvi: %.tex
	latex $<
	latex $<
