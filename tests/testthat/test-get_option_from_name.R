describe("All options", {
  it("has option 'recorder-name'", {
    name_option <- "recorder-name"
    obtained_default <- get_options_from_names(name_option)[[name_option]]
    expected_default <- "Socorro5"
    expect_equal(obtained_default, expected_default)
  })
  it("has option 'memo'", {
    new_option <- character_option(c("-m", "--memo"), default = "Guillermo", help = "Nombre del analista")
    obtained_default <- get_options_from_vec(c(new_option))[["memo"]]
    expected_default <- "Guillermo"
    expect_equal(obtained_default, expected_default)
  })
})
