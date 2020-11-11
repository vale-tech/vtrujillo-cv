#install.packages("devtools")
#devtools::install_github("nstrayer/datadrivencv")

# Update spreadsheet

# Generate Files

# Modify cv.rmd

# 

# run ?datadrivencv::use_datadriven_cv to see more details
datadrivencv::use_datadriven_cv(
  full_name = "Vale R. Trujillo",
  data_location = "https://docs.google.com/spreadsheets/d/14MQICF2F8-vf8CKPF1m4lyGKO6_thG-4aSwat1e2TWc"
)

rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "cv.html")