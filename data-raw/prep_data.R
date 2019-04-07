## This is the script used to download the Project Gutenberg text files 

library(gutenbergr)

get_book <- function(gutenber_ebook_num, title_line, tail_blank = 0) {
        #update: before and after?
        book <- gutenberg_download(gutenber_ebook_num)[['text']]
        book[title_line:length(book) - tail_blank]
}


orthodoxy            <- get_book(gutenber_ebook_num = 130, title_line = 6)
themanwhowasthursday <- get_book(gutenber_ebook_num = 1695, title_line = 0)
heretics             <- get_book(gutenber_ebook_num = 470, title_line = 84)
themanwhoknewtoomuch <- get_book(gutenber_ebook_num = 1720, title_line = 14)

thenapoleonofnothinghill <- get_book(gutenber_ebook_num = 20058, title_line = 40)
manalive                 <- get_book(gutenber_ebook_num = 1718, title_line = 49)
eugenicsandotherevils    <- get_book(25308, title_line = 19)
thenewjerusalem          <- get_book(13468, 1)

whatswrongwiththeworld   <- get_book(gutenber_ebook_num = 1717, title_line = 76)
theballadofthewhitehorse <- get_book(gutenber_ebook_num = 1719, title_line = 0)
ashorthistoryofengland   <- get_book(gutenber_ebook_num = 20897, title_line = 25)

devtools::use_data(themanwhowasthursday, overwrite = TRUE)
devtools::use_data(orthodoxy, overwrite = TRUE)
devtools::use_data(whatswrongwiththeworld, overwrite = TRUE)
devtools::use_data(theballadofthewhitehorse, overwrite = TRUE)
devtools::use_data(heretics, overwrite = TRUE)
devtools::use_data(ashorthistoryofengland, overwrite = TRUE)
devtools::use_data(thenapoleonofnothinghill, overwrite = TRUE)
devtools::use_data(manalive, overwrite = TRUE)
devtools::use_data(eugenicsandotherevils, overwrite = TRUE)
devtools::use_data(thenewjerusalem, overwrite = TRUE)
devtools::use_data(themanwhoknewtoomuch, overwrite = TRUE)

## Finished!

## Making a hex sticker for gkchestertonr

hexSticker::sticker("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/GK_Chesterson_signature.svg/585px-GK_Chesterson_signature.svg.png", 
                    package="", 
                    spotlight = FALSE,
                    h_size = 1.5,
                    h_color = "black",
                    h_fill = "#009933",
                    p_size=0.5, p_y = 0.1,
                    p_family = "RobotoCondensed-Regular",
                    s_x=1, 
                    s_y=0.95, 
                    s_width=0.96,
                    url="gkchestertonr",
                    u_size = 2,
                    u_y = 0.1,
                    u_color = "black",
                    filename="tools/gkchestertonr.png")

gk <- magick::image_read("tools/gkchestertonr.png")
image_scale(gk, "150") %>%
        image_write(path = "tools/logo.png", format = "png")

