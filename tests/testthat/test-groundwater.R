context("Groundwater")

test_that("Observations are positive", {
  expect_true(all(groundwater$no3mgladj>0, na.rm = TRUE))
  expect_true(all(groundwater$po4mgladj>0, na.rm = TRUE))
})
