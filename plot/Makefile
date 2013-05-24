.SUFFIXES: .plt .pdf
.PHONY: clean

pltfiles:=$(wildcard *.plt)
pdffiles:=$(pltfiles:.plt=.pdf)

all: $(pdffiles)

.plt.pdf:
	gnuplot -mono $<

clean:
	rm -f *.pdf *.xbb

