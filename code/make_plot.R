library(tidyverse)

table <- read_csv("results/favorites_combined.csv") 
    
p <- ggplot(table, aes(x=sunrise_or_sunset,fill=sunrise_or_sunset)) +
    geom_bar() +
    scale_y_continuous(expand=c(0,0)) +
    ggtitle("Sunrise or Sunset?") +
    xlab("") + 
    theme_classic() +
    theme(legend.position = "none",
          axis.text = element_text(size=18),
          axis.title = element_text(size=18),
          plot.title = element_text(size=20)) +
    scale_fill_manual(values=c("#92b8db","#e49338"))
    
ggsave("results/plot.png", p, height=5, width=5)
