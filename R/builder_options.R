double_option <- function(name, default, help) {
  optparse::make_option(
    name,
    default = default,
    help = help,
    metavar = "double",
    type = "double"
  )
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
