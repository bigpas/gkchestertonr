# gkchestertonr <img src="tools/logo.png" align="right"/>

[![Build Status](https://travis-ci.org/bigpas/gkchestertonr.svg?branch=master)](https://travis-ci.org/bigpas/gkchestertonr)

## An R Package for a selection of G.K. Chesterton's books

> "A good novel tells us the truth about its hero;
> but a bad novel tells us the truth about its author."

(*Heretics*)

This package provides access to the full texts of a selection of G.K. Chesterton's published books. The UTF-8 plain text for each novel was sourced from [Project Gutenberg](https://www.gutenberg.org/), processed a bit, and is ready for text analysis. Each text is in a character vector with elements of about 70 characters. The package contains:

There is also a function `chesterton_books()` that returns a tidy data frame of all selected novels.

## Installation

You can install the development version from Github:

```
library(devtools)
install_github("bigpas/gkchestertonr")
library(gkchestertonr)
```