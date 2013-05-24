.SUFFIXES: .tex .dvi .pdf
.PHONY: plot clean

F=report

all: $F.pdf

texfiles:=$(wildcard *.tex)

$F.pdf: $F.dvi
	dvipdfmx $<

$F.dvi: plot $(texfiles)
	platex --shell-escape $F.tex
	platex --shell-escape $F.tex

plot:
	cd plot; make

clean:
	rm -f *~ *.dvi *.aux *.log *.pdf
	cd plot; make clean

