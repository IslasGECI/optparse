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

#' @export
character_option <- function(name, default, help) {
  optparse::make_option(
    name,
    default = default,
    help = help,
    metavar = "character",
    type = "character"
  )
}

opcion_data_path <- character_option(
  c("-d", "--data_path"),
  default = "reports/tables/tosh_population_time_series.csv",
  help = ""
)

opcion_recorder_name <- character_option(
  c("-r", "--recorder-name"),
  default = "Socorro5",
  help = ""
)

OPTIONS <- list(
  "b-number" = opcion_b_number,
  "data_path" = opcion_data_path,
  "output" = opcion_output,
  "recorder-name" = opcion_recorder_name
)

make_lista_opciones <- function(names) {
  n_names <- length(names)
  lista_opciones <- comprehenr::to_vec(for (i in 1:n_names) OPTIONS[[names[i]]])
  return(lista_opciones)
}
