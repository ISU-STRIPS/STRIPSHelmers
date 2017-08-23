#' Construct water quality data used in PNAS paper
#'
#' This function will summarize surface and ground water by watershed and
#' year combination for analysis in the PNAS paper.
#'
#' @return A \code{data.frame} containing the columns PI, source, watershed,
#' year, response, and value.
#' @import dplyr
#' @export
#' @examples
#' d <- pnas_data()
#' summary(d)
#'
pnas_data <- function() {
  ground_water <- STRIPSHelmers::groundwater %>%
    filter(pos == 'foot') %>%
    select(year,
           month,
           watershed,
           no3mgladj,
           po4mgladj) %>%
    tidyr::gather(response, value, -year, -month, -watershed) %>%
    mutate(PI = "STRIPSHelmers", source = "groundwater")

  surface_water <- STRIPSHelmers::surfacewater %>%
    select(year,
           watershed,
           runoff_mm, sed_kgha, tn_kgha, tp_kgha, no3_kgha) %>%
    tidyr::gather(response, value, -year, -watershed) %>%
    mutate(PI = "STRIPSHelmers", source = "surfacewater")

  bind_rows(ground_water, surface_water) %>%
    select(PI, source, watershed, year, response, value) %>%
    na.omit
}
