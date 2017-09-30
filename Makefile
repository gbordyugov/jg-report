PDFS     = jg-report.pdf
FIGURES  = 

all: $(PDFS)

jg-report.pdf: jg-report.tex matt.tex jg-report.bib Makefile $(FIGURES)

.SUFFIXES: .tex .pdf

.tex.pdf:
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

clean:
	rm -rf *.log *.aux *.bbl *.blg *.out *.toc *~ $(PDFS)
