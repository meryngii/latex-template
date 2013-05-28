.SUFFIXES: .svg .pdf .pdf_tex .aux
.PHONY: clean

svgfiles:=$(wildcard *.svg)
pdffiles:=$(svgfiles:.svg=.pdf_tex)

all: $(pdffiles)

.svg.pdf_tex:
	inkscape -D -z --file=$< --export-pdf=$(<:.svg=.pdf) --export-latex

clean:
	rm -f *.pdf *.pdf_tex *.aux

