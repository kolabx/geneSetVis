library(shinytest)

testthat::test_that("Application works.", {
  expect_pass(testApp("../", compareImages = grepl("^macOS", utils::osVersion)))
})