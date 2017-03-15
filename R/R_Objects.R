## Atomic Vectors
die <- 1:6
is.vector(die)
five <- 5
is.vector(five)
length(five)
length(die)
int <- 1L
text <- "ace"
int <- c(1L, 5L)
text <- c("ace", "hearts")
sum(int)
# sum(text)
## Doubles
die <- 1:6
typeof(die)
## Integers
int <- c(-1L, 2L, 4L)
typeof(int)
pi
sqrt(2)^2 - 2
## Characters
text <- c("Hello", "World")
text
typeof(text)
typeof("Hello")
## Logicals
3 > 2
logic <- c(TRUE, FALSE, TRUE)
logic
typeof(logic)
typeof(F)
## Complex a]nd Raw
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
typeof(comp)
raw(3)
typeof(raw(3))
hand <- c("ace", "king", "queen", "jack", "ten")
hand
typeof(hand)
# Attributes
attributes(die)
## Names
names(die)
names(die) <- c("one", "two", "three", "four", "five", "six")
die
names(die)
attributes(die)
names(die) <- NULL
## Dim
dim(die) <- c(2, 3)
die
dim(die) <- 1:3
die
attributes(die)
## Matrices
m <- matrix(die, nrow = 2)
m
m <- matrix(die, nrow = 2, byrow = TRUE)
m
## Arrays
ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar
## Class
dim(die) <- c(2, 3)
typeof(die)
class(die)
attributes(die)
class("Hello")
class(5)
## Dates and Times
now <- Sys.time()
now
typeof(now)
class(now)
unclass(now)
mil <- 1000000
mil
class(mil) <- c("POSIXct", "POSIXt")
mil
## Factors
gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
gender
as.character(gender)
card <- c("ace", "hearts", 1)
card
## Coercion
sum(c(TRUE, TRUE, FALSE, FALSE))
as.character(1)
as.logical(1)
as.numeric(FALSE)
## Lists
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1
attributes(list1)
list2 <- list(number = 100:130, char = "R", logical = list(TRUE, FALSE))
list2
attributes(list2)
card <- list("ace", "hearts", 1)
card
## Data Frames
df <- data.frame(face = c("ace", "two", "six"), suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df
typeof(df)
class(df)
attributes(df)
str(df)
df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"),
                 value = c(1, 2, 3),
                 stringsAsFactors = FALSE)
str(df)
## from URL
deck <- read.csv("https://gist.githubusercontent.com/garrettgman/9629323/raw/ee5dfc039fd581cb467cc69c226ea2524913c3d8/deck.csv")
str(deck)
head(deck)
tail(deck)
deck <- read.csv("https://gist.githubusercontent.com/garrettgman/9629323/raw/ee5dfc039fd581cb467cc69c226ea2524913c3d8/deck.csv",
                 stringsAsFactors = FALSE)
ls()
save(list = ls(), file = "./r_objects.RData")
rm(list = ls())
ls()
load("./r_objects.RData")
ls()
rm(list = ls())