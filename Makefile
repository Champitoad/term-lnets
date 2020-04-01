NAME ?= main

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	latexmk -pdflatex=lualatex -pdf --shell-escape $<

view: $(NAME).pdf
	xdg-open $<

clean:
	latexmk -CA

.PHONY: view clean

