describe("get_options()", {
  it("returns a default month", {
    obtained <- get_options()[["month"]]
    expected <- "2022-7"
    expect_equal(obtained, expected)
  })
  it("Use in Makefile", {
    name_options <- 'c(\"data_path\", \"output\", \"b-number\")'
    expected_data_path <- "results.csv"
    expected_output_path <- "output.csv"
    expected_b_number <- "10"
    command <- glue::glue("Rscript -e 'geci.optparse::get_options_from_names({name_options})' --data_path {expected_data_path} --output_path {expected_output_path} --b-number {expected_b_number}")
    output <- system(command, intern = TRUE)
    expected <- stringr::str_detect(output[2], expected_data_path)
    expect_true(expected)
    expected <- stringr::str_detect(output[5], expected_output_path)
    expect_true(expected)
    expected <- stringr::str_detect(output[8], expected_b_number)
    expect_true(expected)
  })

  it("can be used in SRC scripts", {
    src_file <- "/workdir/tests/helpers/cli_option_parser.R"
    expected_month <- "2022-9"
    command <- glue::glue("Rscript {src_file} --month {expected_month}")
    output <- system(command, intern = TRUE)
    expected <- stringr::str_detect(output, expected_month)
    expect_true(expected)
  })
  it("returns a default year", {
    obtained <- get_options()[["year"]]
    expected <- 2030
    expect_equal(obtained, expected)
  })
  it("returns a default interval", {
    obtained <- get_options()[["interval"]]
    expected <- "2000-2023"
    expect_equal(obtained, expected)
  })
  it("returns a default initial population", {
    obtained <- get_options()[["initial-population"]]
    expected <- 516
    expect_equal(obtained, expected)
  })
  it("return interval", {
    src_file <- "/workdir/tests/helpers/cli_option_parser_interval.R"
    expected_interval <- "2017-2037"
    command <- glue::glue("Rscript {src_file} --interval {expected_interval}")
    output <- system(command, intern = TRUE)
    expected <- stringr::str_detect(output, "2017-2037")
    expect_true(expected)
  })
  it("returns a default scenarios", {
    obtained <- get_options()[["scenarios"]]
    expected <- "base,predation,management,fledglings,predation_and_management"
    expect_equal(obtained, expected)
  })
  it("returns a default species", {
    obtained <- get_options()[["species"]]
    expected <- "Hydrobates homochroa"
    expect_equal(obtained, expected)
  })
  it("returns a default island", {
    obtained <- get_options()[["island"]]
    expected <- "Todos Santos"
    expect_equal(obtained, expected)
  })
  it("returns a default right_data", {
    obtained <- get_options()[["right_data"]]
    expected <- ""
    expect_equal(obtained, expected)
  })
  it("returns a default left_data", {
    obtained <- get_options()[["left_data"]]
    expected <- ""
    expect_equal(obtained, expected)
  })
  it("returns a default initial_date", {
    obtained <- get_options()[["initial_date"]]
    expect_true(is.character(obtained))
    expected <- "2022-1"
    expect_equal(obtained, expected)
  })
  it("returns a default final-date", {
    obtained <- get_options()[["final_date"]]
    expect_true(is.character(obtained))
    expected <- "2023-5"
    expect_equal(obtained, expected)
  })
  it("return data path", {
    obtained <- get_options()[["data_path"]]
    expected <- "reports/tables/tosh_population_time_series.csv"
    expect_equal(obtained, expected)
  })
})
