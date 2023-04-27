################# Data exploration: Larvae size class analysis #########################
######## Rachel R. Carlson and Trisha Sharan
######## April 2023

# Load required packages
library(tidyverse)
library(sf)
library(lme4)

# Load recruit and SfM size class data
SfM <- read.csv("/Users/rachelcarlson/Documents/Research/PhD-2018-2022/Size_class/Sizeclass_larvae.csv")
# Load environmental covariates
enviro <- read.csv("/Users/rachelcarlson/Documents/Research/PhD-2018-2022/Larvae/Data/Primary/Tile_results/Dataframes/allsp3.csv") %>% 
  select(c(Site, tot_rec, tot_col, col_density, tot_adult, adult_density, Shann_adult, Simp_adult, Rich_adult, Depth, Total_ABU, B_ABU, C_ABU, D_ABU, F_ABU, G_ABU, MI_ABU, P_ABU, S_ABU, SI_ABU, Z_ABU, gao_coarse, gao_fine, Bay, Region, Puuhonua, sand, gao_curve, gao_cc_mean, gao_cc_max, SfM_32cm, fractal, SfM_maxslope))
# Join SfM and environmental datasets
colnames(SfM)[1] <- "Site"     
full <- left_join(SfM, enviro, by = "Site")
full$recruit_all <- full$Recruit_single_sum + full$Recruit_multi_sum

####### EDA





