#' Monthly nitrate by site (2023)
#'
#' The measurements of Nitrate (NO3-N) in surface water at 15 minute intervals, in units of micromoles per liter are labelled by site and month for three NEON streams.
#' Values are means from the NEON WAQ product; months are ordered Jan–Dec.
#'
#' @format A tibble with columns:
#' \describe{
#'   \item{site}{Factor; NEON site code: ARIK, CARI, LEWI}
#'   \item{month}{Ordered factor; Jan, Feb, …, Dec}
#'   \item{surfWaterNitrateMean}{Numeric; nitrate concentration (µmol/L)}
#' }
#' @source Constructed from NEON downloads (2023) and tidied for educational purpose
#' NEON (National Ecological Observatory Network). Nitrate in surface water (DP1.20033.001), RELEASE-2025. https://doi.org/10.48443/wwa3-p420. Dataset accessed from https://data.neonscience.org/data-products/DP1.20033.001/RELEASE-2025 on October 21, 2025.
#' @examples
#' dplyr::glimpse(nitrate_tidy)
"nitrate_tidy"

