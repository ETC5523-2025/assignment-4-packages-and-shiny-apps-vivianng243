## code to prepare `nitrateproxy` dataset goes here

nitrate_tidy <- read_csv("data-raw/nitrate_tidy.csv")
temp_tidy <- read_csv("data-raw/temp_tidy.csv")

usethis::use_data(nitrate_tidy, temp_tidy, overwrite = TRUE)

