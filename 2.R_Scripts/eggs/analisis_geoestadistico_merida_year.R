# step 1. define the path for the historic dataset ####
path_ovitraps <- "/Users/fdzul/Library/CloudStorage/OneDrive-Personal/datasets/CENAPRECE/2024/14_jalisco"
path_coord <- paste(path_ovitraps, "DescargaOvitrampasMesFco.txt", sep = "/")

library(INLA)
library(sf)
# Step 2INLA# Step 2. run the spde model merida ####
guadalajara <- deneggs::eggs_hotspots_week(cve_mpo = "039",
                                           cve_edo = "14",
                                           year = "2023",
                                           hist_dataset = FALSE,
                                           locality  = c("Guadalajara", "Zapopan",
                                                         "Tlaquepaque", "Tonala"),
                                           path_vect = path_ovitraps,
                                           path_coord = path_coord,
                                           integration_strategy = "eb",
                                           aproximation_method = "gaussian",
                                           fam_distribution = "zeroinflatednbinomial1",
                                           kvalue = 20,
                                           plot = TRUE,
                                           palette.viridis = "viridis",
                                           cell.size = 5000,
                                           alpha.value = .99)