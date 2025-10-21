#' Monthly surface water temperature by site (2023)
#'
#' The measurements of Surface water temperature, available as thirty-minute averages, measured by a platinum resistance thermometer at the sensor location are labelled by site and month for three NEON streams.
#' Values are means from the NEON WAQ product; months are ordered Jan–Dec.
#'
#' @format A tibble with columns:
#' \describe{
#'   \item{site}{Factor; NEON site code: ARIK, CARI, LEWI}
#'   \item{month}{Ordered factor; Jan, Feb, …, Dec}
#'   \item{surfWaterTempMean}{Numeric; temperature in °C}
#' }
#' @source Constructed from NEON downloads (2023) and tidied for educational purpose
#' NEON (National Ecological Observatory Network). Temperature (PRT) in surface water (DP1.20053.001), RELEASE-2025. https://doi.org/10.48443/0cm0-gh54. Dataset accessed from https://data.neonscience.org/data-products/DP1.20053.001/RELEASE-2025 on October 21, 2025.
#' @examples
#' dplyr::glimpse(temp_tidy)
"temp_tidy"

