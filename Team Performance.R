library(understatr)
library(dplyr)
library(data.table)

#Stat on every Arasenal match
ars_19 <- get_team_players_stats(team_name = "Arsenal",year = 2019)

#Get all match IDs
ars1<- get_player_matches_stats(player_id = 318)
ars2<- get_player_matches_stats(player_id = 3277)
ars3<- get_player_matches_stats(player_id = 5656)
ars4<- get_player_matches_stats(player_id = 7752)
ars5<- get_player_matches_stats(player_id = 371)
ars6<- get_player_matches_stats(player_id = 1676)
ars7<- get_player_matches_stats(player_id = 6482)
ars8<- get_player_matches_stats(player_id = 204)
ars9<- get_player_matches_stats(player_id = 492)
ars10<- get_player_matches_stats(player_id = 499)
ars11<- get_player_matches_stats(player_id = 508)
ars12<- get_player_matches_stats(player_id = 847)
ars13<- get_player_matches_stats(player_id = 1227)
ars14<- get_player_matches_stats(player_id = 6492)
ars15<- get_player_matches_stats(player_id = 6630)
ars16<- get_player_matches_stats(player_id = 7322)
ars17<- get_player_matches_stats(player_id = 8089)
ars18<- get_player_matches_stats(player_id = 181)
ars19<- get_player_matches_stats(player_id = 317)
ars20<- get_player_matches_stats(player_id = 342)
ars21<- get_player_matches_stats(player_id = 495)
ars22<- get_player_matches_stats(player_id = 1699)
ars23<- get_player_matches_stats(player_id = 1749)
ars24<- get_player_matches_stats(player_id = 1750)
ars25<- get_player_matches_stats(player_id = 2446)
ars26<- get_player_matches_stats(player_id = 4401)
ars27<- get_player_matches_stats(player_id = 5759)
ars28<- get_player_matches_stats(player_id = 7230)
ars29<- get_player_matches_stats(player_id = 8380)

allars19 <- rbind(ars1,ars2,ars3,ars4,ars5,ars6,ars7,ars8,ars9,ars10)
rm(ars1,ars2,ars3,ars4,ars5,ars6,ars7,ars8,ars9,ars10)
allars19 <- rbind(allars19,ars11,ars12,ars13,ars14,ars15,ars16,ars17,ars18,ars19,ars20)
rm(ars11,ars12,ars13,ars14,ars15,ars16,ars17,ars18,ars19,ars20)
allars19 <- rbind(allars19,ars21,ars22,ars23,ars24,ars25,ars26,ars27,ars28,ars29)
rm(ars21,ars22,ars23,ars24,ars25,ars26,ars27,ars28,ars29)

allars19 <- allars19 %>% filter(year==2019)

#why is there more than 38 unique match IDs?
report <- allars19 %>% group_by(match_id,
                                year,
                                h_team,
                                a_team) %>% summarise(count = n())

# Answer - Loaned out players included. Non-EPL matches also present.

report$flag <- ifelse(report$a_team=="Arsenal" | report$h_team=="Arsenal",1,0)

allars19$flag <- ifelse(allars19$a_team=="Arsenal" | allars19$h_team=="Arsenal",1,0)
allars19 <- allars19 %>% filter(flag==1)
# Only 38 unique match IDs now

ars01 <- get_match_shots(match_id = 12014)
ars02 <- get_match_shots(match_id = 12003)
ars03 <- get_match_shots(match_id = 11993)
ars04 <- get_match_shots(match_id = 11990)
ars05 <- get_match_shots(match_id = 11973)
ars06 <- get_match_shots(match_id = 11972)
ars07 <- get_match_shots(match_id = 11953)
ars08 <- get_match_shots(match_id = 11952)
ars09 <- get_match_shots(match_id = 11941)
ars10 <- get_match_shots(match_id = 11917)
ars11 <- get_match_shots(match_id = 11923)
ars12 <- get_match_shots(match_id = 11903)
ars13 <- get_match_shots(match_id = 11893)
ars14 <- get_match_shots(match_id = 11884)
ars15 <- get_match_shots(match_id = 11859)
ars16 <- get_match_shots(match_id = 11844)
ars17 <- get_match_shots(match_id = 11833)
ars18 <- get_match_shots(match_id = 11824)
ars19 <- get_match_shots(match_id = 11816)
ars20 <- get_match_shots(match_id = 11803)
ars21 <- get_match_shots(match_id = 11802)
ars22 <- get_match_shots(match_id = 11783)
ars23 <- get_match_shots(match_id = 11781)
ars24 <- get_match_shots(match_id = 11763)
ars25 <- get_match_shots(match_id = 11762)
ars26 <- get_match_shots(match_id = 11743)
ars27 <- get_match_shots(match_id = 11733)
ars28 <- get_match_shots(match_id = 11730)
ars29 <- get_match_shots(match_id = 11722)
ars30 <- get_match_shots(match_id = 11712)
ars31 <- get_match_shots(match_id = 11702)
ars32 <- get_match_shots(match_id = 11691)
ars33 <- get_match_shots(match_id = 11682)
ars34 <- get_match_shots(match_id = 11670)
ars35 <- get_match_shots(match_id = 11653)
ars36 <- get_match_shots(match_id = 11650)
ars37 <- get_match_shots(match_id = 11881)
ars38 <- get_match_shots(match_id = 11863)

season_19 <- rbind(ars01,
                   ars02,
                   ars03,
                   ars04,
                   ars05,
                   ars06,
                   ars07,
                   ars08,
                   ars09,
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

rm(ars01,
   ars02,
   ars03,
   ars04,
   ars05,
   ars06,
   ars07,
   ars08,
   ars09,
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

ars01 <- get_match_stats(match_id =  12014)
ars02 <- get_match_stats(match_id =  12003)
ars03 <- get_match_stats(match_id =  11993)
ars04 <- get_match_stats(match_id =  11990)
ars05 <- get_match_stats(match_id =  11973)
ars06 <- get_match_stats(match_id =  11972)
ars07 <- get_match_stats(match_id =  11953)
ars08 <- get_match_stats(match_id =  11952)
ars09 <- get_match_stats(match_id =  11941)
ars10 <- get_match_stats(match_id =  11917)
ars11 <- get_match_stats(match_id =  11923)
ars12 <- get_match_stats(match_id =  11903)
ars13 <- get_match_stats(match_id =  11893)
ars14 <- get_match_stats(match_id =  11884)
ars15 <- get_match_stats(match_id =  11859)
ars16 <- get_match_stats(match_id =  11844)
ars17 <- get_match_stats(match_id =  11833)
ars18 <- get_match_stats(match_id =  11824)
ars19 <- get_match_stats(match_id =  11816)
ars20 <- get_match_stats(match_id =  11803)
ars21 <- get_match_stats(match_id =  11802)
ars22 <- get_match_stats(match_id =  11783)
ars23 <- get_match_stats(match_id =  11781)
ars24 <- get_match_stats(match_id =  11763)
ars25 <- get_match_stats(match_id =  11762)
ars26 <- get_match_stats(match_id =  11743)
ars27 <- get_match_stats(match_id =  11733)
ars28 <- get_match_stats(match_id =  11730)
ars29 <- get_match_stats(match_id =  11722)
ars30 <- get_match_stats(match_id =  11712)
ars31 <- get_match_stats(match_id =  11702)
ars32 <- get_match_stats(match_id =  11691)
ars33 <- get_match_stats(match_id =  11682)
ars34 <- get_match_stats(match_id =  11670)
ars35 <- get_match_stats(match_id =  11653)
ars36 <- get_match_stats(match_id =  11650)
ars37 <- get_match_stats(match_id =  11881)
ars38 <- get_match_stats(match_id =  11863)

season_19_2 <- rbind(ars01,
                     ars02,
                     ars03,
                     ars04,
                     ars05,
                     ars06,
                     ars07,
                     ars08,
                     ars09,
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

rm(ars01,
   ars02,
   ars03,
   ars04,
   ars05,
   ars06,
   ars07,
   ars08,
   ars09,
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

fwrite(season_19,'arsenal match shots 2019.csv')
fwrite(season_19_2,'arsenal match stats 2019.csv')

season19 <- fread("arsenal match shots 2019.csv")
season19_2 <- fread("arsenal match stats 2019.csv")

season19_2$auba<-ifelse(season19_2$player=="Pierre-Emerick Aubameyang",1,0)
season19_2$laca<-ifelse(season19_2$player=="Alexandre Lacazette",1,0)
season19_2$pepe<-ifelse(season19_2$player=="Nicolas Pepe",1,0)
season19_2$martinelli<-ifelse(season19_2$player=="Gabriel Martinelli",1,0)
season19_2$sokratis<-ifelse(season19_2$player=="Sokratis",1,0)
season19_2$luiz<-ifelse(season19_2$player=="David Luiz",1,0)
season19_2$nketiah<-ifelse(season19_2$player=="Eddie Nketiah",1,0)
season19_2$xhaka<-ifelse(season19_2$player=="Granit Xhaka",1,0)
season19_2$bellerin<-ifelse(season19_2$player=="Héctor Bellerín",1,0)
season19_2$ozil<-ifelse(season19_2$player=="Mesut Özil",1,0)
season19_2$chambers<-ifelse(season19_2$player=="Calum Chambers",1,0)
season19_2$cedric<-ifelse(season19_2$player=="Cédric Soares",1,0)
season19_2$torreira<-ifelse(season19_2$player=="Lucas Torreira",1,0)
season19_2$nelson<-ifelse(season19_2$player=="Reiss Nelson",1,0)
season19_2$willock<-ifelse(season19_2$player=="Joe Willock",1,0)
season19_2$saka<-ifelse(season19_2$player=="Bukayo Saka",1,0)
season19_2$kt<-ifelse(season19_2$player=="Kieran Tierney",1,0)
season19_2$leno<-ifelse(season19_2$player=="Bernd Leno",1,0)
season19_2$mkhi<-ifelse(season19_2$player=="Henrikh Mkhitaryan",1,0)
season19_2$kola<-ifelse(season19_2$player=="Sead Kolasinac",1,0)
season19_2$monreal<-ifelse(season19_2$player=="Nacho Monreal",1,0)
season19_2$mustafi<-ifelse(season19_2$player=="Shkodran Mustafi",1,0)
season19_2$holding<-ifelse(season19_2$player=="Rob Holding",1,0)
season19_2$aml<-ifelse(season19_2$player=="Ainsley Maitland-Niles",1,0)
season19_2$ceballos<-ifelse(season19_2$player=="Dani Ceballos",1,0)
season19_2$martinez<-ifelse(season19_2$player=="Emiliano Martinez",1,0)
season19_2$gendouzi<-ifelse(season19_2$player=="Matteo Guendouzi",1,0)
season19_2$esr<-ifelse(season19_2$player=="Emile Smith-Rowe",1,0)
season19_2$mari<-ifelse(season19_2$player=="Pablo Marí",1,0)

fwrite(season19_2,"arsenal match stats 2019 w player tags.csv")

