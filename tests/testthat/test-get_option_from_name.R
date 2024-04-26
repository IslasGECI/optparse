describe("All options", {
  memo_option <- character_option(c("-m", "--memo"), default = "Guillermo", help = "Nombre del analista")
  nepo_option <- character_option(c("-n", "--nepo"), default = "Nepo", help = "Nombre del analista")
  pi_option <- double_option(c("-p", "--pi"), default = 3.1416, help = "Cuál valor de pi usaremos")
  it("has option 'recorder-name'", {
    name_option <- "recorder-name"
    obtained_default <- get_options_from_names(name_option)[[name_option]]
    expected_default <- "Socorro5"
    expect_equal(obtained_default, expected_default)
  })
  it("has option 'memo'", {
    obtained_default <- get_options_from_vec(c(memo_option))[["memo"]]
    expected_default <- "Guillermo"
    expect_equal(obtained_default, expected_default)
  })
  it("has options 'memo' and 'nepo'", {
    vec_options <- c(memo_option, nepo_option)
    obtained <- get_options_from_vec(vec_options)
    obtained_memo_default <- obtained[["memo"]]
    expected_memo_default <- "Guillermo"
    expect_equal(obtained_memo_default, expected_memo_default)

    obtained_nepo_default <- obtained[["nepo"]]
    expected_nepo_default <- "Nepo"
    expect_equal(obtained_nepo_default, expected_nepo_default)
  })
  it("has options 'pi'", {
    vec_options <- c(pi_option)
    obtained <- get_options_from_vec(vec_options)
    obtained_pi_default <- obtained[["pi"]]
    expected_pi_default <- 3.1416
    expect_equal(obtained_pi_default, expected_pi_default)
  })
})
