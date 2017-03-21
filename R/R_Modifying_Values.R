deck <- read.csv("../data/cards.csv", stringsAsFactors = FALSE)
deck2 <- deck
## Changing Values in Place
vec <- rep(0, 6)
vec[1]
vec[1] <- 1000
vec
vec[c(1, 3, 5)] <- c(1, 1, 1)
vec[c(1, 3, 5)] <- 1
vec
vec[4:6] <- vec[4:6] + 1
vec
vec[7] <- 0
vec[9] <- 0
vec
deck2$new <- 1:52
head(deck2)
deck2$new <- NULL
head(deck2)
deck2[seq(13, 52, by = 13), ]
deck2[seq(13, 52, by = 13), 1]
deck2[seq(13, 52, by = 13), 1, drop = FALSE]
deck2$value[seq(13, 52, by = 13)]
deck2$value[seq(13, 52, by = 13)] <- 14
head(deck2, n = 13)
source("./shuffle.R")
deck3 <- shuffle(deck)
deck3
head(deck3)
## Logical Subsetting
vec
vec[c(FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE)]
### Logical Tests
1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)
1 %in% c(3, 4, 5)
c(1, 2) %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)
c(1, 2, 3, 4) %in% c(3, 4, 5)
deck2$face == "ace"
sum(deck2$face == "ace")
deck2$value[deck2$face == "ace"]
deck3$value[deck3$face == "ace"] <- 14
deck3
deck4 <- deck
deck4$value <- 0
head(deck4, 13)
deck4$suit == "hearts"
deck4$value[deck4$suit == "hearts"]
deck4$value[deck4$suit == "hearts"] <- 1
deck4$value[deck4$suit == "hearts"]
deck4[deck4$face == "queen", ]
deck4[deck4$suit == "spades", ]
## Boolean Operators
a <- c(1, 2, 3)
b <- c(1, 2, 3)
c <- c(1, 2, 4)
a == b
b == c
a == b & b == c
deck4$face == "queen" & deck4$suit == "spades"
queenOfSpades <- deck4$face == "queen" & deck4$suit == "spades"
deck4[queenOfSpades, ]
deck4$value[queenOfSpades]
deck5 <- deck
deck5
facecard <- deck5$face %in% c("king", "queen", "jack")
facecard
deck5[facecard, ]
deck5$value[facecard] <- 10
head(deck5, 13)
## Missing Information
1 + NA
NA == 1
c(1, 2, NA) == c(1, 2, 3)
### na.rm
c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)
### is.na
NA == NA
c(1, 2, 3, NA) == NA
vec <- c(1, 2, 3, NA)
is.na(vec)
which(is.na(vec))
deck5$value[deck$face == "ace"] <- NA
save(list = ls(), file = "./r_modifying_values.RData")