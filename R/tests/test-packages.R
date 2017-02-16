## Test data validity

context("Required packages")

# Test AirPassengers exists
test_that("Package rmarkdown is installed", {
    expect_true(require(rmarkdown))
})

