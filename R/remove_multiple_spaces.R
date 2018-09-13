#' Remove mutiple spaces from a string
#'
#' @param str  A string. The string to be cleaned
#'
#'
#' @return str  The cleaned string
#' 
#' @import stringr
#'
#' @export
#'
#' @examples
#' # library(rgmrfilm)
#' #

remove_multiple_spaces <- function(str){
    library(stringr)
    str <- gsub("\\s+", " ", str_trim(string))
    return(str)
}
