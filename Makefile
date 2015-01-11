latex = pdflatex
INSTALL_PATH = /usr/local/share/texmf/tex/latex
e1 = example1_linear
e2 = example2_circular
e3 = example3_coordinates
e4 = example4_labels
e5 = elsa

allexamples: $(e1).pdf $(e2).pdf $(e3).pdf $(e4).pdf $(e5).pdf
.PHONY: allexamples


$(e1).pdf: $(e1).tex
	$(latex) $<

$(e2).pdf: $(e2).tex
	$(latex) $<

$(e3).pdf: $(e3).tex
	$(latex) $<

$(e4).pdf: $(e4).tex
	$(latex) $<

$(e5).pdf: $(e5).tex
	$(latex) $<


install:
	install -m 644 -p -D -v lattice.sty $(INSTALL_PATH)/lattice/lattice.sty
	mktexlsr

clean:
	rm $(e1).pdf $(e2).pdf $(e3).pdf $(e4).pdf $(e5).pdf
