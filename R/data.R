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
"surfacewater"
