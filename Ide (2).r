library(tidyverse)
library(scales)
ggplot(data = League_Finances, aes(y = League, x = Money_Spent, fill = Season))+
  geom_boxplot()+
  theme_classic()+
  labs(y = "Sports League", x = "Money Spent on Roster ($)")+
  scale_color_viridis_d()+
  theme(axis.title.x = element_text(size = 16), axis.title.y = element_text(size = 16))+
  scale_x_continuous(labels = comma)