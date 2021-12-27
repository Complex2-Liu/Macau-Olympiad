LATEXMK = latexmk
OUTPUTDIR := ~/homepage/content/problems/
NAME = sols-2020
ARCHIVE_LIST = main.tex Makefile content *.asy

.PHONY: all doc asy clean archive

all: doc archive clean

clean:
	$(LATEXMK) -c

asy: *.asy
	asy -f pdf *.asy

doc: asy
	$(LATEXMK) -xelatex main.tex

archive: doc
	tar -czvf $(NAME).tar.gz $(ARCHIVE_LIST)
	mv $(NAME).tar.gz $(OUTPUTDIR)
	cp main.pdf $(OUTPUTDIR)$(NAME).pdf
