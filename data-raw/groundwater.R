library(dplyr)

groundwater = readr::read_csv("STRIPS1HelmersGroundWaterData2007_2014.csv", na='.') %>%
  mutate(site = plyr::revalue(site, c("B"="Basswood",
                                      "I"="Interim",
                                      "W"="Orbweaver")),
         watershed = paste(site,catch,sep=""))

devtools::use_data(groundwater, overwrite = TRUE)
