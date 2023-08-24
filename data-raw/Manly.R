### data from Manly
##   BannadiBurials, Belize, BumpusSparrows, ButterflyColonies, EgyptianSkulls, EuroEmp, EuroFood, Goblets, Mandible, RoadsNZ, Steneryd, VotingNJ

library(tidyverse)
library(dplyr)
library(forcats)

Datasets = c("BannadiBurials", "Belize", "BumpusSparrows", "ButterflyColonies", "EgyptianSkulls", "EuroEmp", "EuroFood", "Goblets", "Mandible", "RoadsNZ", "Steneryd", "VotingNJ")

for(Dataset in Datasets){
  assign(Dataset, read.csv(paste0("https://R-resources.massey.ac.nz/data/Manly/", Dataset, ".csv"), stringsAsFactors = TRUE))
  }



usethis::use_data(BannadiBurials, overwrite = TRUE)

usethis::use_data(Belize, overwrite = TRUE)

usethis::use_data(BumpusSparrows, overwrite = TRUE)

ButterflyColonies = ButterflyColonies |> column_to_rownames(var="X") 
usethis::use_data(ButterflyColonies, overwrite = TRUE)

usethis::use_data(EgyptianSkulls, overwrite = TRUE)

EuroEmp = EuroEmp |> column_to_rownames(var="X") 
usethis::use_data(EuroEmp, overwrite = TRUE)

EuroFood = EuroFood |> column_to_rownames(var="X") 
usethis::use_data(EuroFood, overwrite = TRUE)

usethis::use_data(Goblets, overwrite = TRUE)

Mandible = Mandible |> column_to_rownames(var="X") 
usethis::use_data(Mandible, overwrite = TRUE)

RoadsNZ = RoadsNZ  |> column_to_rownames(var="X") 
usethis::use_data(RoadsNZ, overwrite = TRUE)

Steneryd = Steneryd  |> column_to_rownames(var="X") 
usethis::use_data(Steneryd, overwrite = TRUE)

VotingNJ = VotingNJ |> column_to_rownames(var="X") 
usethis::use_data(VotingNJ, overwrite = TRUE)
