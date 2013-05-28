.SUFFIXES: .tex .dvi .pdf
.PHONY: plot svg clean

F=report

all: $F.pdf

texfiles:=$(wildcard *.tex)

$F.pdf: $F.dvi
	dvipdfmx $<

$F.dvi: plot svg $(texfiles)
	platex --shell-escape $F.tex
	platex --shell-escape $F.tex

plot:
	$(MAKE) -C plot

svg:
	$(MAKE) -C svg

clean:
	rm -f *~ *.dvi *.aux *.log *.pdf
	$(MAKE) -C plot clean
	$(MAKE) -C svg clean

