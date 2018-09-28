quiet = "--quiet" %in% commandArgs(FALSE)
format = commandArgs(TRUE)
travis = !is.na(Sys.getenv('CI', NA))

# install bookdown
local({
  r = getOption('repos')
  if (!length(r) || all(r['CRAN'] == '@CRAN@')) r['CRAN'] = 'https://cran.rstudio.com' 
  options(repos = r)
})
if (system.file(package = 'bookdown') == '') install.packages('bookdown')

src = (function() {
  attr(body(sys.function()), 'srcfile')
})()$filename
if (is.null(src) || src == '') src = '.'
owd = setwd(dirname(src))

# provide default format if necessary
if (length(format) == 0) format = 'bookdown::pdf_book'
# render the book to all formats unless they are specified via command-line args

cmd = sprintf("bookdown::render_book('index.Rmd', '%s', quiet = %s)", format, quiet)
res = bookdown:::Rscript(c('-e', shQuote(cmd)))
if (res != 0) stop('Failed to compile the book to ', format)

setwd(owd)
