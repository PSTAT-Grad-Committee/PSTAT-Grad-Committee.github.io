library(ggplot2)
library(dplyr)
library(gganimate)
library(transformr)
library(gifski)

t <- seq(0, 1, length = 1000)

dat <- tibble(t = t, dens = dbeta(t, 9, 2))

q <- dat %>% ggplot(aes(x = t, y = dens)) +
  geom_line(aes(group = 1), col = "gray", alpha = 0.5, size = 0.5) +
  transition_reveal(t) +
  shadow_mark(size = 1, colour = "gray") +
  theme(panel.background = element_blank()) +
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  theme(axis.title.y=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())

animate(q, renderer = gifski_renderer(loop = F), fps = 40)