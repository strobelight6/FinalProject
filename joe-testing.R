library(tidyverse)
library(ggplot2)

cbb <- read.csv("datasets/cbb.csv")
cbb15 <- read.csv("datasets/cbb15.csv")
cbb16 <- read.csv("datasets/cbb16.csv")
cbb17 <- read.csv("datasets/cbb17.csv")
cbb18 <- read.csv("datasets/cbb18.csv")
cbb19 <- read.csv("datasets/cbb19.csv")
cbb20 <- read.csv("datasets/cbb20.csv")

iowaTeams <- cbb %>%
  filter(TEAM %in% c('Iowa St.', 'Iowa', 'Northern Iowa'))

iowaTeams %>% 
  ggplot(aes(x=YEAR, y=W, group=TEAM, color=TEAM)) + 
  geom_line() +
  ggtitle("Iowa Team's Total Wins by Year") +
  ylab("Wins") +
  xlab("Year")
