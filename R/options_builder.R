double_option <- function(name, default, help) {
  optparse::make_option(
    name,
    default = default,
    help = help,
    metavar = "double",
    type = "double"
  )
}
