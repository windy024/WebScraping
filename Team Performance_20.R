library(understatr)
library(dplyr)
library(data.table)

#Stat on every Arasenal match
ars_20 <- get_team_players_stats(team_name = "Arsenal",year = 2020)
fwrite(ars_20,"arsenal_20_playerstat.csv")

#Get all match IDs
ars1<-get_player_matches_stats(player_id=3277)
ars2<-get_player_matches_stats(player_id=318)
ars3<-get_player_matches_stats(player_id=5656)
ars4<-get_player_matches_stats(player_id=7322)
ars5<-get_player_matches_stats(player_id=5613)
ars6<-get_player_matches_stats(player_id=6482)
ars7<-get_player_matches_stats(player_id=7230)
ars8<-get_player_matches_stats(player_id=204)
ars9<-get_player_matches_stats(player_id=492)
ars10<-get_player_matches_stats(player_id=496)
ars11<-get_player_matches_stats(player_id=700)
ars12<-get_player_matches_stats(player_id=1676)
ars13<-get_player_matches_stats(player_id=2517)
ars14<-get_player_matches_stats(player_id=7752)
ars15<-get_player_matches_stats(player_id=8089)
ars16<-get_player_matches_stats(player_id=181)
ars17<-get_player_matches_stats(player_id=342)
ars18<-get_player_matches_stats(player_id=508)
ars19<-get_player_matches_stats(player_id=847)
ars20<-get_player_matches_stats(player_id=1699)
ars21<-get_player_matches_stats(player_id=1749)
ars22<-get_player_matches_stats(player_id=1750)
ars23<-get_player_matches_stats(player_id=2328)
ars24<-get_player_matches_stats(player_id=2385)
ars25<-get_player_matches_stats(player_id=2446)
ars26<-get_player_matches_stats(player_id=6492)
ars27<-get_player_matches_stats(player_id=6630)
ars28<-get_player_matches_stats(player_id=6875)
ars29<-get_player_matches_stats(player_id=8380)

allars <- rbind(ars1,ars2,ars3,ars4,ars5,ars6,ars7,ars8,ars9,ars10)
rm(ars1,ars2,ars3,ars4,ars5,ars6,ars7,ars8,ars9,ars10)
allars <- rbind(allars,ars11,ars12,ars13,ars14,ars15,ars16,ars17,ars18,ars19,ars20)
rm(ars11,ars12,ars13,ars14,ars15,ars16,ars17,ars18,ars19,ars20)
allars <- rbind(allars,ars21,ars22,ars23,ars24,ars25,ars26,ars27,ars28,ars29)
rm(ars21,ars22,ars23,ars24,ars25,ars26,ars27,ars28,ars29)

allars <- allars %>% filter(year==2020)

#why is there more than 38 unique match IDs?
# Answer - Loaned out players included. Non-EPL matches also present.

allars$flag <- ifelse(allars$a_team=="Arsenal" | allars$h_team=="Arsenal",1,0)
allars <- allars %>% filter(flag==1)
fwrite(allars,"allars match id.csv")
# Only 38 unique match IDs now

ars1<-get_match_shots(match_id=14805)
ars2<-get_match_shots(match_id=14790)
ars3<-get_match_shots(match_id=14775)
ars4<-get_match_shots(match_id=14745)
ars5<-get_match_shots(match_id=14741)
ars6<-get_match_shots(match_id=14725)
ars7<-get_match_shots(match_id=14724)
ars8<-get_match_shots(match_id=14705)
ars9<-get_match_shots(match_id=14697)
ars10<-get_match_shots(match_id=14690)
ars11<-get_match_shots(match_id=14675)
ars12<-get_match_shots(match_id=14655)
ars13<-get_match_shots(match_id=14650)
ars14<-get_match_shots(match_id=14635)
ars15<-get_match_shots(match_id=14632)
ars16<-get_match_shots(match_id=14615)
ars17<-get_match_shots(match_id=14605)
ars18<-get_match_shots(match_id=14600)
ars19<-get_match_shots(match_id=14585)
ars20<-get_match_shots(match_id=14575)
ars21<-get_match_shots(match_id=14569)
ars22<-get_match_shots(match_id=14554)
ars23<-get_match_shots(match_id=14542)
ars24<-get_match_shots(match_id=14525)
ars25<-get_match_shots(match_id=14505)
ars26<-get_match_shots(match_id=14500)
ars27<-get_match_shots(match_id=14485)
ars28<-get_match_shots(match_id=14480)
ars29<-get_match_shots(match_id=14115)
ars30<-get_match_shots(match_id=14099)
ars31<-get_match_shots(match_id=14086)
ars32<-get_match_shots(match_id=14798)
ars33<-get_match_shots(match_id=14771)
ars34<-get_match_shots(match_id=14665)
ars35<-get_match_shots(match_id=14555)
ars36<-get_match_shots(match_id=14518)
ars37<-get_match_shots(match_id=14465)
ars38<-get_match_shots(match_id=14755)

season <- rbind(ars1,
                   ars2,
                   ars3,
                   ars4,
                   ars5,
                   ars6,
                   ars7,
                   ars8,
                   ars9,
                   ars10,
                   ars11,
                   ars12,
                   ars13,
                   ars14,
                   ars15,
                   ars16,
                   ars17,
                   ars18,
                   ars19,
                   ars20,
                   ars21,
                   ars22,
                   ars23,
                   ars24,
                   ars25,
                   ars26,
                   ars27,
                   ars28,
                   ars29,
                   ars30,
                   ars31,
                   ars32,
                   ars33,
                   ars34,
                   ars35,
                   ars36,
                   ars37,
                   ars38
)

rm(ars1,
   ars2,
   ars3,
   ars4,
   ars5,
   ars6,
   ars7,
   ars8,
   ars9,
   ars10,
   ars11,
   ars12,
   ars13,
   ars14,
   ars15,
   ars16,
   ars17,
   ars18,
   ars19,
   ars20,
   ars21,
   ars22,
   ars23,
   ars24,
   ars25,
   ars26,
   ars27,
   ars28,
   ars29,
   ars30,
   ars31,
   ars32,
   ars33,
   ars34,
   ars35,
   ars36,
   ars37,
   ars38
)

ars1<-get_match_stats(match_id=14805)
ars2<-get_match_stats(match_id=14790)
ars3<-get_match_stats(match_id=14775)
ars4<-get_match_stats(match_id=14745)
ars5<-get_match_stats(match_id=14741)
ars6<-get_match_stats(match_id=14725)
ars7<-get_match_stats(match_id=14724)
ars8<-get_match_stats(match_id=14705)
ars9<-get_match_stats(match_id=14697)
ars10<-get_match_stats(match_id=14690)
ars11<-get_match_stats(match_id=14675)
ars12<-get_match_stats(match_id=14655)
ars13<-get_match_stats(match_id=14650)
ars14<-get_match_stats(match_id=14635)
ars15<-get_match_stats(match_id=14632)
ars16<-get_match_stats(match_id=14615)
ars17<-get_match_stats(match_id=14605)
ars18<-get_match_stats(match_id=14600)
ars19<-get_match_stats(match_id=14585)
ars20<-get_match_stats(match_id=14575)
ars21<-get_match_stats(match_id=14569)
ars22<-get_match_stats(match_id=14554)
ars23<-get_match_stats(match_id=14542)
ars24<-get_match_stats(match_id=14525)
ars25<-get_match_stats(match_id=14505)
ars26<-get_match_stats(match_id=14500)
ars27<-get_match_stats(match_id=14485)
ars28<-get_match_stats(match_id=14480)
ars29<-get_match_stats(match_id=14115)
ars30<-get_match_stats(match_id=14099)
ars31<-get_match_stats(match_id=14086)
ars32<-get_match_stats(match_id=14798)
ars33<-get_match_stats(match_id=14771)
ars34<-get_match_stats(match_id=14665)
ars35<-get_match_stats(match_id=14555)
ars36<-get_match_stats(match_id=14518)
ars37<-get_match_stats(match_id=14465)
ars38<-get_match_stats(match_id=14755)

season_2 <- rbind(ars1,
                     ars2,
                     ars3,
                     ars4,
                     ars5,
                     ars6,
                     ars7,
                     ars8,
                     ars9,
                     ars10,
                     ars11,
                     ars12,
                     ars13,
                     ars14,
                     ars15,
                     ars16,
                     ars17,
                     ars18,
                     ars19,
                     ars20,
                     ars21,
                     ars22,
                     ars23,
                     ars24,
                     ars25,
                     ars26,
                     ars27,
                     ars28,
                     ars29,
                     ars30,
                     ars31,
                     ars32,
                     ars33,
                     ars34,
                     ars35,
                     ars36,
                     ars37,
                     ars38
)

rm(ars1,
   ars2,
   ars3,
   ars4,
   ars5,
   ars6,
   ars7,
   ars8,
   ars9,
   ars10,
   ars11,
   ars12,
   ars13,
   ars14,
   ars15,
   ars16,
   ars17,
   ars18,
   ars19,
   ars20,
   ars21,
   ars22,
   ars23,
   ars24,
   ars25,
   ars26,
   ars27,
   ars28,
   ars29,
   ars30,
   ars31,
   ars32,
   ars33,
   ars34,
   ars35,
   ars36,
   ars37,
   ars38
)

fwrite(season,'arsenal match shots 2020.csv')
fwrite(season_2,'arsenal match stats 2020.csv')

season_2$leno<-ifelse(season_2$player_id==181,1,0)
season_2$chambers<-ifelse(season_2$player_id==508,1,0)
season_2$holding<-ifelse(season_2$player_id==1749,1,0)
season_2$gabriel<-ifelse(season_2$player_id==5613,1,0)
season_2$kt<-ifelse(season_2$player_id==8089,1,0)
season_2$xhaka<-ifelse(season_2$player_id==204,1,0)
season_2$partey<-ifelse(season_2$player_id==2328,1,0)
season_2$pepe<-ifelse(season_2$player_id==5656,1,0)
season_2$odegaard<-ifelse(season_2$player_id==2517,1,0)
season_2$esr<-ifelse(season_2$player_id==7230,1,0)
season_2$auba<-ifelse(season_2$player_id==318,1,0)
season_2$laca<-ifelse(season_2$player_id==3277,1,0)
season_2$saka<-ifelse(season_2$player_id==7322,1,0)
season_2$martinelli<-ifelse(season_2$player_id==7752,1,0)
season_2$mari<-ifelse(season_2$player_id==8380,1,0)
season_2$elneny<-ifelse(season_2$player_id==496,1,0)
season_2$bellerin<-ifelse(season_2$player_id==492,1,0)
season_2$ceballos<-ifelse(season_2$player_id==2446,1,0)
season_2$willian<-ifelse(season_2$player_id==700,1,0)
season_2$ryan<-ifelse(season_2$player_id==2385,1,0)
season_2$nketiah<-ifelse(season_2$player_id==6482,1,0)
season_2$soares<-ifelse(season_2$player_id==847,1,0)
season_2$luiz<-ifelse(season_2$player_id==1676,1,0)
season_2$runarsson<-ifelse(season_2$player_id==6875,1,0)
season_2$willock<-ifelse(season_2$player_id==6630,1,0)
season_2$amn<-ifelse(season_2$player_id==1750,1,0)
season_2$mustafi<-ifelse(season_2$player_id==1699,1,0)
season_2$nelson<-ifelse(season_2$player_id==6492,1,0)
season_2$kolasinac<-ifelse(season_2$player_id==342,1,0)

fwrite(season_2,"arsenal match stats 2020 w player tags.csv")

