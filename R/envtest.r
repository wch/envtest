#' @import nlme
NULL

#' @export
envtest <- function() {
  dat <- data.frame(x = 0, y = 0)
  f <- factor(c("a", "b"))

  # Print the starting data
  cat("\nf                                                : ")
  cat(f)

  cat("\n\nTests with %in% operator ----------------------------")

  # OK
  cat('\n"x" %in% Names(y ~ x, data = dat)                : ')
  cat("x" %in% Names(y ~ x, data = dat))

  # OK: Save boolean values to idx, then use f[idx]
  cat('\nidx <- "x" %in% Names(y ~ x, data = dat); f[idx] : ')
  cat({idx <- "x" %in% Names(y ~ x, data = dat); f[idx]})

  # OK: Use the expression with S3 function Names directly inside of []
  cat('\nf["x" %in% Names(y ~ x, data = dat)]             : ')
  cat(f["x" %in% Names(y ~ x, data = dat)])


  cat("\n\nTests with == operator ------------------------------")

  # OK
  cat('\n"x" == Names(y ~ x, data = dat)                  : ')
  cat("x" == Names(y ~ x, data = dat))

  # OK: Save boolean values to idx, then use f[idx]
  cat('\nidx <- "x" == Names(y ~ x, data = dat); f[idx]   : ')
  cat({idx <- "x" == Names(y ~ x, data = dat); f[idx]})

  # Error: Use the expression with S3 function Names directly inside of []
  cat('\nf["x" == Names(y ~ x, data = dat)]               : ')
  cat(f["x" == Names(y ~ x, data = dat)])

  invisible()
}


