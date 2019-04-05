# tests for chesterton_books function

context("Tidy dataframe for books")

suppressPackageStartupMessages(library(dplyr))

test_that("factor order is correct", {
        d <- chesterton_books()
        expect_equal(levels(d$book)[1], "Heretics")
        expect_equal(levels(d$book)[2], "Orthodoxy")
})

test_that("get_book is correct", {
        orthodoxy <- gutenberg_download(130)$text
        orthodoxy <- orthodoxy[6:length(orthodoxy)]
        
        expect_equal(length(orthodoxy),
                     5839
                     )
})

test_that("tidy frame for Chesterton books is right", {
        
        d <- chesterton_books() %>%
                group_by(book) %>%
                summarise(total_lines = n())
        
        expect_equal(nrow(d), 11)
        expect_equal(ncol(d), 2)
        expect_equal(as.character(d$book[1]), "Heretics")
        expect_equal(as.character(d$book[3]), "Man Alive")
        expect_lt(d$total_lines[1], d$total_lines[3])
})
