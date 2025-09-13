# Makefile per compilare entrambe le versioni del CV

all: altacv moderncv

altacv:
	xelatex cv_altacv.tex
	xelatex cv_altacv.tex

moderncv:
	pdflatex cv_moderncv.tex
	pdflatex cv_moderncv.tex

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.bcf *.blg *.run.xml *.fdb_latexmk *.fls *.synctex.gz *.xdv

.PHONY: all altacv moderncv clean