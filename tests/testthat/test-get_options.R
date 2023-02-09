describe("get_options()", {
  it("returns a default month", {
    obtained <- get_options()[["month"]]
    expected <- "2022-7"
    expect_equal(obtained, expected)
  })
  it("can be used in SRC scripts", {
    src_file <- "/workdir/tests/helpers/cli_option_parser.R"
    expected_month <- "2022-9"
    command <- glue::glue("Rscript {src_file} --month {expected_month}")
    output <- system(command, intern = TRUE)
    expected <- stringr::str_detect(output, expected_month)
    expect_true(expected)
  })
})
