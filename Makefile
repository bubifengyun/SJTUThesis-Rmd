pdf:
	Rscript --quiet _render.R "bookdown::pdf_book"

gitbook:
	Rscript --quiet _render.R "bookdown::gitbook"

all:
	Rscript --quiet _render.R

wordcount:
	@texcount _book/sjtu-thesis-rmd.tex -inc          | awk '/total/ {getline; print "词数　　:",$$4}'
	@texcount _book/sjtu-thesis-rmd.tex -inc -char    | awk '/total/ {getline; print "字符数　:",$$4}'
	@texcount _book/sjtu-thesis-rmd.tex -inc -ch-only | awk '/total/ {getline; print "中文字数:",$$4}'
