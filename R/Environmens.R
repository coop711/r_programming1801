# Environments
## Environments
library(pryr)
parenvs(all = TRUE)
as.environment("package:stats")
globalenv()
baseenv()
emptyenv()
parent.env(globalenv())
parent.env(emptyenv())
ls(emptyenv())
ls(globalenv())
head(globalenv()$deck, 3)
assign("new", "Hello Global", envir = globalenv())
ls()
globalenv()$new
## The Active Environment
environment()
## Scoping Rules
## Assignment
new
new <- "Hello Active"
new
roll <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
## Evaluation
show_env <- function(){
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()
show_env()
### origin environment
environment(show_env)
environment(parenvs)
show_env <- function(){
  a <- 1
  b <- 2
  c <- 3
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()
foo <- "take me to your runtime"
fix(show_env)
show_env()
rm("foo")
fix(show_env)
show_env()
deal2 <- function(){
  deck[1, ]
}
deal2()
environment(deal2)
DECK <- deck
deck <- deck[-1, ]
head(deck, n = 3)
deal3 <- function(){
  card <- deck[1, ]
  deck <- deck[-1, ]
  card
}
deal3()
head(deck, n = 6)
deal4 <- function(){
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv())
  card
}
deal4()
head(deck, 6)
source("./R/shuffle.R")
shuffle
head(deck, 3)
a <- shuffle(deck)
head(deck, 3)
head(a, 3)
shuffle2 <- function(){
  random <- sample(1:52)
  assign("deck", DECK[random, ], envir = globalenv())
}
shuffle2()
DECK
deck
## Closures
shuffle2()
deal4()
setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function(){
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}
cards <- setup(deck)
ls()
deck
str(cards)
deal <- cards$deal
shuffle <- cards$shuffle
deal()
shuffle()
deck
nrow(deck)
DECK
environment(DECK)
