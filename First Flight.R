library(remotes)
remotes::install_github('ewenme/understatr')
library(understatr)

#1.get_league_seasons()
get_league_seasons(league_name = "EPL")
  
#2.get_league_teams_stats()
epl_19 <- get_league_teams_stats(league_name = "EPL",year = 2019)

#3.get_match_shots() - How to get Match ID? Available in 5
chears <- get_match_shots(match_id = 14790)

#4.get_match_stats() - How to get Match ID? Available in 5
chears <- get_match_stats(match_id = 14790)

#5.get_player_matches_stats() - How to get player ID? Available in 9
auba <- get_player_matches_stats(player_id = 318)

#6.get_player_seasons_stats()
auba <- get_player_seasons_stats(player_id = 318)

#7.get_player_shots()
auba <- get_player_shots(player_id = 318)

#8.get_team_meta()
get_team_meta(team_name = "Arsenal")

#9.get_team_players_stats
ars_19 <- get_team_players_stats(team_name = "Arsenal",year = 2019)
