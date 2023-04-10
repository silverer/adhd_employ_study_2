setwd("~/Documents/adhd_employ_study_2/")
library(pacman)
p_load(tidyverse,stringr)

#plot for expected effect of FOR
means <- data.frame(frame_or = c("General", "School-Specific",
                                 "General", "School-Specific"),
                    order = c("General first", "General first",
                              "School-specific first", "School-specific first"),
                    score = c(3.8, 4.2,
                              3.5, 4.7))

