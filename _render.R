quiet = "--quiet" %in% commandArgs(FALSE)
format = commandArgs(TRUE)
travis = !is.na(Sys.getenv('CI', NA))

# 配置源
local({
  r = getOption('repos')
  if (!length(r) || all(r['CRAN'] == '@CRAN@')) r['CRAN'] = 'https://cran.rstudio.com' 
  options(repos = r)
})


# 填上你需要用到的包
lapply(c('bookdown', 'diagram','DT', 'citr', 'formatR', 'svglite', 'webshot', 'devtools', 'shape'), function(pkg) {
  if (system.file(package = pkg) == '') install.packages(pkg)
})

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
