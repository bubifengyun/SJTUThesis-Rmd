pdf:
	Rscript _render.R "bookdown::pdf_book"

wordcount:
	@texcount _book/sjtu-thesis-rmd.tex -inc -ch-only | awk '/total/ {getline; print "纯中文字数\t\t\t:",$$4}'
	@texcount _book/sjtu-thesis-rmd.tex -inc -char-only | awk '/total/ {getline; print "英文字符数\t\t\t:",$$4}'
	@texcount _book/sjtu-thesis-rmd.tex -inc -chinese | awk '/total/ {getline; print "总字数（英文单词 + 中文字）\t:",$$4}'
