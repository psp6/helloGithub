ir()
d <- read.csv('rajiv.csv')
head(d)
names(d)
summary(d)
dim(d)
hook <- is.na(d$hook)
hook <- d[hook==FALSE, ]
head(hook); summary(hook)
no <- seq(1, dim(hook)[1], 1);no
Country <-hook$Country
hook <- hook[order(hook$Country), ]
hook$id <- 1
hook$id1 <- unlist(tapply(hook$id, hook$Country, cumsum))
head(hook)
hook$sno <- 1:dim(hook)[1]