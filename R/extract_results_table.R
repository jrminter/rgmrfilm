#' Extract the results table from GMRFILM output
#'
#' @param sim_dir  A string. The path to the simulation directory.
#'                 Example: here()
#'
#' @param sim_fi   A string. The base file name of the GMRFILM output
#'                 that was piped to a file. Example: "tio2-1000a-on-ti".
#'
#' @param raw_ext  A string for the raw extension. Example: ".dat"
#' 
#' @param out_ext  A string for the out extension. Example: "-out.dat"
#'
#' @param skip_top An integer. The number of rows when reading in the
#'                 raw output from the .out file. Example: 55. You want
#'                 to capture the title line for readability.
#'
#' @param n_rows   An integer. The number of rows (lines) to keep.
#'                 Example: 9. This should yield a complete output
#'                 table.
#'
#' @param verbose  A Boolean. Default: FALSE. If TRUE it prints lines.
#'
#'
#' @return None.   The function writes the extracted table to 
#'                 the sim_fi variable with '-ext.txt' appended
#'                   
#' @export
#'
#' @examples
#' library(rgmrfilm)
#' # to be added

extract_result_table <- function(sim_dir, sim_fi,
                                 raw_ext, out_ext,
                                 skip_top, n_rows,
                                 verbose=FALSE){
  # generate the file paths
  in_fi <- sprintf("%s/%s%s", sim_dir, sim_fi, raw_ext)
  ou_fi <- sprintf("%s/%s%s", sim_dir, sim_fi, out_ext)
  # read the data and keep the lines from the table
  lines <- readLines(in_fi)
  lines <- lines[-(seq(1:skip_top))]
  lines <- lines[seq(1:n_rows)]
  if(verbose==TRUE){print(lines[1])}
  # write the table to a text file
  sink(ou_fi)
  for (i in seq(1:n_rows)){
    cat(lines[i])
    cat("\n")
  }
  sink()
}
