library(dplyr)

surfacewater = readr::read_csv("STRIPS1HelmersSurfaceWaterData2007_2014.csv", na='.') %>%
  mutate(site = plyr::revalue(site, c("B"="Basswood",
                                      "I"="Interim",
                                      "W"="Orbweaver")),
         watershed = paste(site,catch,sep=""))

devtools::use_data(surfacewater, overwrite = TRUE)
