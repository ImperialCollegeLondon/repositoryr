#' Function to modify a file name
#'
#' @param path A character string
#'
#' @return A character string
#' @export
filename <- function(path) {
  modified_path <- paste0("R/", path)
  return(modified_path)
}
