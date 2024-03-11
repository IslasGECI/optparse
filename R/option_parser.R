library(optparse)

character_option <- function(name, default, help) {
  optparse::make_option(
    name,
    default = default,
    help = help,
    metavar = "character",
    type = "character"
  )
}

#' @export
get_options <- function() {
  listaOpciones <- list(
    character_option(
      c("-m", "--month"),
      default = "2022-7",
      help = ""
    ),
    character_option(
      c("-p", "--predictions_path"),
      default = "reports/non-tabular/summary_predictions.json",
      help = ""
    ),
    opcion_data_path,
    optparse::make_option(
      c("-o", "--output_path"),
      default = "reports/figures/yearly_time_serie_individuals_all_scenario.jpg",
      help = "",
      metavar = "character",
      type = "character"
    ),
    integer_option(c("-y", "--year"), default = 2030),
    integer_option(c("--initial-population"), default = 516),
    optparse::make_option(
      c("-s", "--scenarios"),
      default = "base,predation,management,fledglings,predation_and_management",
      help = "",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-e", "--species"),
      default = "Hydrobates homochroa",
      help = "",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-i", "--island"),
      default = "Todos Santos",
      help = "",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-r", "--right_data"),
      default = "",
      help = "Path to right joined data",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-l", "--left_data"),
      default = "",
      help = "Path to left joined data",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-b", "--initial_date"),
      default = "2022-1",
      help = "Initial date",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-f", "--final_date"),
      default = "2023-5",
      help = "Final date",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("--interval"),
      default = "2000-2023",
      help = "Year interval",
      metavar = "character",
      type = "character"
    )
  )
  opt_parser <- optparse::OptionParser(option_list = listaOpciones)
  opciones <- optparse::parse_args(opt_parser)
  return(opciones)
}

integer_option <- function(name = c("-y", "--year"), default = 2030) {
  optparse::make_option(
    name,
    default = default,
    help = "",
    metavar = "integer",
    type = "integer"
  )
}
