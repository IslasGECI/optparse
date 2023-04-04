library(optparse)

#' @export
get_options <- function() {
  listaOpciones <- list(
    optparse::make_option(
      c("-m", "--month"),
      default = "2022-7",
      help = "",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-p", "--predictions_path"),
      default = "reports/non-tabular/summary_predictions.json",
      help = "",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-d", "--data_path"),
      default = "reports/tables/tosh_population_time_series.csv",
      help = "",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-o", "--output_path"),
      default = "reports/figures/yearly_time_serie_individuals_all_scenario.jpg",
      help = "",
      metavar = "character",
      type = "character"
    ),
    optparse::make_option(
      c("-y", "--year"),
      default = 2030,
      help = "",
      metavar = "integer",
      type = "integer"
    ),
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
    )
  )
  opt_parser <- optparse::OptionParser(option_list = listaOpciones)
  opciones <- optparse::parse_args(opt_parser)
  return(opciones)
}
