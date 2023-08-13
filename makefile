SHELL   = /bin/sh

TEXCMD = "xelatex" -synctex=1 -interaction=nonstopmode
CONVERT_CMD = xdvipdfmx

FILE_FR   = resume_fr
FILE_EN   = resume_en

TEX_FR     = $(FILE_FR).tex
XDV_FR     = $(FILE_FR).xdv
PDF_FR     = $(FILE_FR).pdf

TEX_EN     = $(FILE_EN).tex
XDV_EN     = $(FILE_EN).xdv
PDF_EN     = $(FILE_EN).pdf


all:
	make cv_fr
	make cv_en

cv_fr:
	$(TEXCMD) $(TEX_FR)
	$(TEXCMD) $(TEX_FR)
	make clean

cv_en:
	$(TEXCMD) $(TEX_EN)
	$(TEXCMD) $(TEX_EN)
	make clean

help:
	echo "USAGE: make [all/cv_fr/cv_en/clean]"

clean:
	rm -f *.aux *.dvi *.idx *.ilg *.ind *.log *.nav *.out *.snm *.xdv *.toc *~ *.synctex.gz

rm_pdf:
	rm -f *.pdf