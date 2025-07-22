
rm(list = ls())                 # Clear variables
while (!is.null(dev.list())) dev.off()  # Close all plots


library("rstudioapi") # Load rstudioapi package
setwd(dirname(getActiveDocumentContext()$path)) # Set working directory to source file location
getwd() # Check updated working directory



for (q in 1:100) {
  old_filename <- paste0("main_script", q, " copy.R")
  new_filename <- paste0("main_script", q, ".R")
  lines <- readLines(old_filename)
  lines <- gsub("RD_Alg_M", "M16", lines)
  writeLines(lines, new_filename)
}
