# tests for austen_books function

context("Tidy dataframe for books")

suppressPackageStartupMessages(library(dplyr))

# test_that("factor order is correct", {
#         d <- austen_books()
#         expect_equal(levels(d$book)[1], "Heretics")
#         expect_equal(levels(d$book)[6], "Man Alive")
# })

test_that("get_book is correct", {
        orthodoxy <- gutenberg_download(130)$text
        orthodoxy <- orthodoxy[6:length(orthodoxy)]
        
        expect_equal(length(orthodoxy),
                     5839
                     )
})

# test_that("tidy frame for Chesterton books is right", {
#         d <- austen_books() %>% 
#                 group_by(book) %>%
#                 summarise(total_lines = n())
#         expect_equal(nrow(d), 6)
#         expect_equal(ncol(d), 2)
#         # the factor levels still in the right order?
#         expect_equal(as.character(d$book[1]), "Heretics")
#         expect_equal(as.character(d$book[6]), "Man Alive")
#         # 
#         expect_lt(d$total_lines[6], d$total_lines[4])
# })
