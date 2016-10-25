#' Groundwater data
#'
#' Groundwater data for monthly nitrate and phosphate.
#'
#' @format A data.frame with 10 variables: \code{year}, \code{site},
#' \code{catch}, \code{pos}ition, \code{month}, \code{no3mgl}, \code{no3mgladj},
#' \code{po4mgl}, and \code{watershed}.
#'
#' @seealso \code{\link{surfacewater}}
"groundwater"

#' Surface water data
#'
#' Surface water data for monthly nitrate and phosphate.
#'
#' @format A data.frame with 10 variables: \code{year}, \code{site},
#' \code{catch}, \code{runoff_mm}, \code{sed_kgha}, \code{tn_kgha},
#' \code{tp_kdha}, \code{no3_kgha}, \code{sed_mgL}, \code{tn_mgL},
#' \code{tp_mgL}, \code{no3_mgL}, and \code{watershed}.
#'
#' @seealso \code{\link{groundwater}}
#'
#' @examples
#' # Calculate average all crop sediment, total nitrogen, and phosphorus loads.
#' library(dplyr)
#' surfacewater %>%
#'   left_join(STRIPSMeta::watersheds) %>%
#'   filter(prairie_pct == 0, year>2007) %>%
#'   select(watershed, sed_kgha, tn_kgha, tp_kgha) %>%
#'   na.omit() %>%
#'   summarize(sed_Mgha = mean(sed_kgha)/1000,
#'             tn_kgha  = mean(tn_kgha),
#'             tp_kgha  = mean(tp_kgha))
"surfacewater"
