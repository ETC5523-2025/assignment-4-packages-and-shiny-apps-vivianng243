#' Monthly median for a selected site and month
#'
#' Returns the median of the numeric column in a dataset like `nitrate_tidy`
#' or `temp_tidy` for a specific site and month.
#'
#' @param data A tibble or data frame (e.g. `nitrate_tidy` or `temp_tidy`).
#' @param site Site code to filter (e.g. `"LEWI"`, `"ARIK"`, `"CARI"`).
#' @param month Month label to filter (e.g. `"Jan"`, `"Feb"`, ... `"Dec"`).
#' @param value Name of numeric column to summarise (default = `surfWaterNitrateMean`).
#'
#' @return A single numeric value (the median) or `NA` if no matching data.
#' @examples
#' # Median nitrate for LEWI in January
#' monthly_median(nitrate_tidy, "LEWI", "Jan", surfWaterNitrateMean)
#'
#' # Median temperature for LEWI in January
#' monthly_median(temp_tidy, "LEWI", "Jan", surfWaterTempMean)
#' @export
monthly_median <- function(data, site, month, value = surfWaterNitrateMean) {
  value <- rlang::enquo(value)

  data |>
    dplyr::filter(site == !!site, month == !!month) |>
    dplyr::summarise(median = stats::median(!!value, na.rm = TRUE)) |>
    dplyr::pull(median)
}
