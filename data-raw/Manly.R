### data from Manly
##   BannadiBurials, Belize, BumpusSparrows, ButterflyColonies, EgyptianSkulls, EuroEmp, EuroFood, Goblets, PrehistoricDogs, RoadsNZ, Steneryd, VotingNJ

library(dplyr)
library(forcats)

Datasets = c("BannadiBurials", "Belize", "BumpusSparrows", "ButterflyColonies", "EgyptianSkulls", "EuroEmp", "EuroFood", "Goblets", "PrehistoricDogs", "RoadsNZ", "Steneryd", "VotingNJ")

for(Dataset in Datasets){
  assign(Dataset, read.csv(paste0("https://R-resources.massey.ac.nz/data/Manly/", Dataset, ".csv"), stringsAsFactors = TRUE))
  }

usethis::use_data(BannadiBurials, overwrite = TRUE)
usethis::use_data(Belize, overwrite = TRUE)
usethis::use_data(BumpusSparrows, overwrite = TRUE)
usethis::use_data(ButterflyColonies, overwrite = TRUE)
usethis::use_data(EgyptianSkulls, overwrite = TRUE)
usethis::use_data(EuroEmp, overwrite = TRUE)
usethis::use_data(PrehistoricDogs, overwrite = TRUE)
usethis::use_data(RoadsNZ, overwrite = TRUE)
usethis::use_data(Steneryd, overwrite = TRUE)
usethis::use_data(VotingNJ, overwrite = TRUE)

usethis::use_data(Goblets, overwrite = TRUE)
usethis::use_data(EuroFood, overwrite = TRUE)



