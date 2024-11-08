#===============================================================================
# Clear objects
#===============================================================================
rm(list = ls()) # This would cause rmarkdown to error

#===============================================================================
# Set working directory
#===============================================================================
setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) # https://stackoverflow.com/questions/13672720/r-command-for-setting-working-directory-to-source-file-location-in-rstudio
getwd()

#===============================================================================
# Set output directory
#===============================================================================
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.20_c9orf72/results"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.20_c9orf72/results_dev"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.20_c9orf72/results_dev2"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.20_c9orf72/results_dev3"
out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.20_c9orf72/results_recolour"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.20_c9orf72/results_readexclusion"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.20_c9orf72/results_recolour_readexclusion"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.24_diagnostics_saskia/results"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.10.24_diagnostics_saskia/results_dev"
# out_dir = "/Users/michaelflower/my_bin/othello/demo/2024.11.05_drishti/results"

#===============================================================================
# Run rmarkdown files
#===============================================================================
rmarkdown::render("duke.Rmd", output_file = file.path(out_dir, "duke.html"))