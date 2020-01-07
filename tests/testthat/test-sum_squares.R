test_vec <- rnorm(20, mean = 5, sd = 1.2)

#test_vec <- c(1, 2, NA, "boy")
# the above is breaking the test

## standard case
# expect a floating point result from a numeric input
test_that("output is type \"double\" for numeric input", {
  expect_type(sum_squares(test_vec), "double")
  })

# expect that result is not negative
test_that("output is non-negative", {
  expect_gte(sum_squares(test_vec), 0)
})

#expect that the vector is not made of identical numbers
test_that("vector of numbers not equal", {
  expect_equal(sum_squares(rep(1,10)), 0)
})

# missing values should result in a missing value
test_that("missing values give a result of NA", {
  expect_equal(sum_squares(c(test_vec, NA)), NA_real_)
})

test_that("non-numeric input fives errors and/or warnings", {
  expect_condition(sum_squares(c("cat", "dog")))
})
