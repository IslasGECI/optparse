#' @export
get_options_from_vec <- function(vector) {
  opt_parser <- optparse::OptionParser(option_list = vector)
  opciones <- optparse::parse_args(opt_parser)
  return(opciones)
}
