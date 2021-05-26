library(ggplot2)
library(remotes)
remotes::install_github("torvaney/ggsoccer")
library(ggsoccer)

#Pitch details for understat data
pitch_understat <- list(
  length = 587,
  width = 373,
  penalty_box_length = 101,
  penalty_box_width = 211,
  six_yard_box_length = 31,
  six_yard_box_width = 111,
  penalty_spot_distance = 66,
  goal_width = 45,
  origin_x = 0,
  origin_y = 0)

#Check the plot with understat.com for the same shot. 
ggplot() +
  annotate_pitch(dimensions = pitch_understat) +
  theme_pitch(aspect_ratio = 373/587) +
  geom_point(aes(x = 0.917*587, y = (1-0.488)*373),
             fill = "yellow", 
             shape = 21,
             size = 4) +
  coord_flip(xlim = c(280, 590), 
             ylim = c(10, 365))
ggplot() +
  annotate_pitch(dimensions = pitch_understat) +
  theme_pitch(aspect_ratio = 373/587) +
  geom_point(aes(x = 0.934*587, y = (1-0.658)*373),
             fill = "yellow", 
             shape = 21,
             size = 4) +
  coord_flip(xlim = c(280, 590), 
             ylim = c(10, 365))
ggplot() +
  annotate_pitch(dimensions = pitch_understat) +
  theme_pitch(aspect_ratio = 373/587) +
  geom_point(aes(x = 0.782*587, y = (1-0.688)*373),
             fill = "yellow", 
             shape = 21,
             size = 4) +
  coord_flip(xlim = c(280, 590), 
             ylim = c(10, 365))
#Verified

cryars <- get_match_shots(match_id = 14798)

#Cleaning the data
cryars <- cryars %>% filter(player=="Nicolas Pepe")

ggplot(cryars) +
  annotate_pitch(dimensions = pitch_understat) +
  theme_pitch(aspect_ratio = 373/587) +
  geom_point(aes(x = X * 587, y = (1- Y)*373),
             fill = "yellow", 
             shape = 21,
             size = cryars$xG*10) +
  coord_flip(xlim = c(280, 590), 
             ylim = c(10, 365))

season <- fread('arsenal match shots 2020.csv')
pepe <- season %>% filter(player_id==5656)

pepe_bellerin <- pepe %>% filter(match_id %in% c("14745",
                                                 "14675",
                                                 "14635",
                                                 "14605",
                                                 "14575",
                                                 "14505",
                                                 "14485",
                                                 "14480",
                                                 "14115",
                                                 "14099",
                                                 "14086",
                                                 "14771",
                                                 "14518",
                                                 "14465"))

pepe_wo_bellerin <- pepe %>% filter(!match_id %in% pepe_bellerin$match_id)

season19 <- fread("arsenal match shots 2019.csv")
pepe19 <- season19 %>% filter(player_id==5656)

pepe19_bellerin <- pepe19 %>% filter(match_id %in% c("11990",
                                                            "11953",
                                                            "11952",
                                                            "11941",
                                                            "11903",
                                                            "11893",
                                                            "11783",
                                                            "11763",
                                                            "11762",
                                                            "11881"))

pepe19_wo_bellerin <- pepe19 %>% filter(!match_id %in% c("11990",
                                                            "11953",
                                                            "11952",
                                                            "11941",
                                                            "11903",
                                                            "11893",
                                                            "11783",
                                                            "11763",
                                                            "11762",
                                                            "11881"))

pepe_bellerin <- rbind(pepe_bellerin,pepe19_bellerin)
pepe_wo_bellerin <- rbind(pepe_wo_bellerin,pepe19_wo_bellerin)

ggplot(pepe_bellerin) +
  annotate_pitch(dimensions = pitch_understat) +
  theme_pitch(aspect_ratio = 373/587) +
  geom_point(aes(x = X * 587, y = (1- Y)*373),
             fill = "yellow", 
             shape = 21,
             size = pepe_bellerin$xG*10) +
  coord_flip(xlim = c(280, 590), 
             ylim = c(10, 365))

ggplot(pepe_wo_bellerin) +
  annotate_pitch(dimensions = pitch_understat) +
  theme_pitch(aspect_ratio = 373/587) +
  geom_point(aes(x = X * 587, y = (1- Y)*373),
             fill = "yellow", 
             shape = 21,
             size = pepe_wo_bellerin$xG*10) +
  coord_flip(xlim = c(280, 590), 
             ylim = c(10, 365))
