#' Tidy data frame of G.K. Chesterton's 6 works.
#' 
#' Returns a tidy data frame of G.K. Chesterton's completed and published works with 
#' two columns: \code{text}, which contains the text of the novels divided into 
#' elements of up to about 70 characters each, and \code{book}, which contains the titles of
#' the novels as a factor in order of publication.
#' 
#' @details Users should be aware that there are some differences in usage 
#' between the novels as made available by Project Gutenberg. For example, 
#' "anything" vs. "any thing", "Mr" vs. "Mr.", and using underscores vs. all 
#' caps to indicate italics/emphasis.
#' 
#' @return A data frame with two columns: \code{text} and \code{book}
#' 
#' @name chesterton_books
#' 
#' @examples 
#' 
#' library(dplyr)
#'
#' chesterton_books() %>% group_by(book) %>%
#'      summarise(total_lines = n())
#'
#' @export
chesterton_books <- function(){
        books <- list(
                "Heretics" = gkchestertonr::heretics,
                "Orthodoxy" = gkchestertonr::orthodoxy,
                "Man Alive" = gkchestertonr::manalive,
                "The Man Who Was Thursday" = gkchestertonr::themanwhowasthursday,
                "The Man Who Knew Too Much" = gkchestertonr::themanwhoknewtoomuch,
                "What's Wrong with the World" = gkchestertonr::whatswrongwiththeworld,
                "The New Jerusalem" = gkchestertonr::thenewjerusalem,
                "What's Wrong with the World" = gkchestertonr::whatswrongwiththeworld,
                "The Napoleon of Nothing Hill" = gkchestertonr::thenapoleonofnothinghill,
                "Eugenics and other Evils" = gkchestertonr::eugenicsandotherevils,
                "The Ballad of the White Horse" = gkchestertonr::theballadofthewhitehorse,
                "A Short History of England" = gkchestertonr::ashorthistoryofengland
        )
       ret <- data.frame(text = unlist(books, use.names = FALSE), 
                         stringsAsFactors = FALSE)
       ret$book <- factor(rep(names(books), sapply(books, length)))
       ret$book <- factor(ret$book, levels = unique(ret$book))
       structure(ret, class = c("tbl_df", "tbl", "data.frame"))
}
