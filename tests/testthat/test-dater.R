
# check if the output consists of 8 characters
test_that("output length is correct", {
  expect_equal(object = nchar(dater(Sys.Date())), expected = 8)
})

# check if the output consists of 8 digits in the characters
test_that("output string consists of numbers", {
  expect_match(object = dater(Sys.Date()), regexp = "^[0-9]{1,8}$")
})
