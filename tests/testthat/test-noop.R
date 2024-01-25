context('noop')

test_that('noop', {
    expect_equal(1, dbfishR::noop(0))
})
