all:
	rm -f _book/*.html &&\
	BOOKDOWN_FULL_PDF=false Rscript --quiet _render.R

pdf:
	Rscript --quiet _render.R "bookdown::pdf_book" &&\
	mv _book/rmarkdown-cookbook.pdf _book/rmarkdown-cookbook-full.pdf &&\
	open _book/rmarkdown-cookbook-full.pdf

gitbook:
	Rscript --quiet _render.R "bookdown::gitbook"

pdf2:
	BOOKDOWN_FULL_PDF=false Rscript --quiet _render.R "bookdown::pdf_book"
