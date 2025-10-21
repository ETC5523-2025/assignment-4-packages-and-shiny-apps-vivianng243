#' Launch the nitratoR Shiny app
#'
#' Opens an interactive dashboard to explore monthly distributions
#' of nitrate (µmol/L) and temperature (°C) across 3 NEON sites including ARIK, CARI, LEWI.
#'
#' @return Runs a Shiny app; no R object is returned.
#' @examples
#' \dontrun{ launch_app() }
#' @export
launch_app <- function() {
  app_dir <- system.file("app", package = "nitratoR")
  if (app_dir == "") stop("App directory not found. Reinstall the package.", call. = FALSE)
  shiny::runApp(app_dir, display.mode = "normal")
}
