all: includeme.PDF

includeme.pdf: includeme.tex
	latexmk -pdf includeme.tex

includeme.PDF: includeme.pdf
	cp includeme.pdf includeme.PDF
