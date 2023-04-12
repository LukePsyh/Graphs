library(tidyverse)
library(ggimage)
library(rlang)
library(ggimage)
library(nflfastR)

asp_ratio <- 1.618

view(teams_colors_logos)



draft_plot<- 
  ggplot(Con_Board, aes(x = Pick, y = Consensus))+
  labs(title = "Which Teams Got the Most Value Out of Their Day One Pick?",
       subtitle = "The Athletic Consensus Board Position vs. Position Drafted",
       caption = "Data viz @Luke_Psyhogios | Consensus Board via. @TheAthletic and @ArifHasanNFL")+
  geom_image(aes(image = team_logo_wikipedia), size = 0.05, by = "width", asp = asp_ratio)+
  geom_smooth(method = 'lm', se = FALSE)+
  theme_classic()+
  geom_label(
    label = 'Pick is Considered a Reach',
    x=10,
    y=63,
    label.padding = unit(0.55, 'lines'),
    label.size = 0.35,
    color = 'white',
    fill = 'darkred',
  )+
  geom_label(
    label = 'Quay Walker',
    x=21,
    y=56,
    label.padding = unit(0.55, 'lines'),
    label.size = 0.35,
    color = 'black',
    fill = '#ffb612',
  )+
  geom_label(
    label = 'Cole Strange',
    x=29,
    y=72,
    label.padding = unit(0.55, 'lines'),
    label.size = 0.35,
    color = 'black',
    fill = '#c60c30',
  )+
  geom_curve(aes(x = 10, y = 61, xend = 21, yend = 49),
             size = 2, color = "#203731",
             arrow = arrow(length = unit(0.07, "npc")))+
  geom_curve(aes(x = 10, y = 61, xend = 27, yend = 70),
             curvature = 0.7, angle = 20,
             size = 2, color = "#002244",
             arrow = arrow(length = unit(0.07, "npc")))+
  geom_label(
    label = 'Pick is Considered a Steal',
    x=20,
    y=10,
    label.padding = unit(0.55, 'lines'),
    label.size = 0.35,
    color = 'white',
    fill = '#0CB702',
  )+
  geom_label(
    label = 'Kyle Hamilton',
    x=14,
    y=1,
    label.padding = unit(0.55, 'lines'),
    label.size = 0.35,
    color = 'white',
    fill = '#241773',
  )+
  geom_label(
    label = 'Jermaine Johnson',
    x=30,
    y=7,
    label.padding = unit(0.55, 'lines'),
    label.size = 0.35,
    color = 'white',
    fill = '#203731',
  )
  
draft_plot <- ggsave(file = "draft_plot.png", plot = last_plot())



  
