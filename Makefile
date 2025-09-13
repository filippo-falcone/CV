# Makefile per compilare entrambe le versioni del CV

all: altacv moderncv altacv_simple

altacv:
	xelatex cv_altacv.tex
	xelatex cv_altacv.tex

moderncv:
	pdflatex cv_moderncv.tex
	pdflatex cv_moderncv.tex

altacv_simple:
	pdflatex cv_altacv_simple.tex
	pdflatex cv_altacv_simple.tex

altacv_simple_xe:
	xelatex cv_altacv_simple.tex
	xelatex cv_altacv_simple.tex

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.bcf *.blg *.run.xml *.fdb_latexmk *.fls *.synctex.gz *.xdv

.PHONY: all altacv moderncv altacv_simple altacv_simple_xe clean