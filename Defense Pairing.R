library(remotes)
remotes::install_github('ewenme/understatr')
library(understatr)
library(dplyr)
library(data.table)

#Exploratory Analysis
epl_19 <- get_league_teams_stats(league_name = "EPL",year = 2019)
epl_20 <- get_league_teams_stats(league_name = "EPL",year = 2020)
ars_19 <- get_team_players_stats(team_name = "Arsenal",year = 2019)
ars_20 <- get_team_players_stats(team_name = "Arsenal",year = 2020)

fwrite(epl_20,"epl_20.csv")
fwrite(ars_20,"ars_20.csv")
