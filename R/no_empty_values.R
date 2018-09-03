#' Remove empty values from a strsplt() call for easier processing
#'
#' @param li A list of strings output from strsplt() containing missing
#'           values (i.e. "")
#'
#' @return li The list without the missing values 
#'
#' @export
#'
#' @examples
#' library(rgmrfilm)
#' # to be added

no_empty_values <- function(li){
  li <- li[li != ""]
  return(li)
}
