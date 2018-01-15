TAG := $(if $(TAG),$(TAG),local)

.PHONY: pdflatex

all: pdflatex

pdflatex:
	docker build -t jlecoeur/pdflatex:$(TAG)  . -f Dockerfile
