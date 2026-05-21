LATEX=xelatex
BIBER=biber
MAIN=main
GUIDE=latex-user-guide-lo
SAMPLE=sample-output

.PHONY: all pdf guide clean

all: pdf guide

pdf:
	$(LATEX) -jobname=$(SAMPLE) $(MAIN).tex
	$(BIBER) $(SAMPLE)
	$(LATEX) -jobname=$(SAMPLE) $(MAIN).tex
	$(LATEX) -jobname=$(SAMPLE) $(MAIN).tex

guide:
	cd guide && $(LATEX) $(GUIDE).tex
	cd guide && $(LATEX) $(GUIDE).tex

clean:
	-powershell -NoProfile -Command "Remove-Item -Force *.aux,*.bbl,*.bcf,*.blg,*.fdb_latexmk,*.fls,*.log,*.out,*.run.xml,*.synctex.gz,*.toc,*.lof,*.lot,*.idx,*.ilg,*.ind,*.nav,*.snm,*.vrb,'$(MAIN).pdf' -ErrorAction SilentlyContinue"
	-powershell -NoProfile -Command "Remove-Item -Force guide\\*.aux,guide\\*.bbl,guide\\*.bcf,guide\\*.blg,guide\\*.fdb_latexmk,guide\\*.fls,guide\\*.log,guide\\*.out,guide\\*.run.xml,guide\\*.synctex.gz,guide\\*.toc,guide\\*.lof,guide\\*.lot,guide\\*.idx,guide\\*.ilg,guide\\*.ind,guide\\*.nav,guide\\*.snm,guide\\*.vrb -ErrorAction SilentlyContinue"
