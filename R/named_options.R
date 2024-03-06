#' @export
get_options_from_names <- function(names) {
  listaOpciones <- make_lista_opciones(names)
  opt_parser <- optparse::OptionParser(option_list = listaOpciones)
  opciones <- optparse::parse_args(opt_parser)
  return(opciones)
}

opcion_b_number <- optparse::make_option(
  c("-b", "--b-number"),
  default = "2000",
  help = "Number of resample in bootstrapping method",
  type = "integer"
)

opcion_output <- optparse::make_option(
  c("-o", "--output_path"),
  default = "results/output.csv",
  help = "Output path",
  metavar = "character",
  type = "character"
)

opcion_data_path <- optparse::make_option(
      c("-d", "--data_path"),
      default = "reports/tables/tosh_population_time_series.csv",
      help = "",
      metavar = "character",
      type = "character"
)

OPTIONS <- list(
  "b-number" = opcion_b_number,
  "data_path" = opcion_data_path,
  "output" = opcion_output
)

make_lista_opciones <- function(names) {
  n_names <- length(names_options_cli)
  lista_opciones <- comprehenr::to_list(for (i in 1:n_names) OPTIONS[[names[i]]])
  return(lista_opciones)
}