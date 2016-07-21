pars2 <- data.frame(par_m = seq(-10, 10, length.out = 1000), 
                   par_sd = seq(0.1, 10, length.out = 1000))

# Create a function to parallelize
ftest <- function(par_m, par_sd) {
  samp <- rnorm(10^7, par_m, par_sd)
  c(s_m = mean(samp), s_sd = sd(samp))
}
