# Step 1. define the path ####
path_ovitraps <- "/Users/fdzul/Dropbox/CENAPRECE/2024/31_yucatan"
path_coordinates <- paste(path_ovitraps, "DescargaOvitrampasMesFco.txt", sep = "/")

# Step 2. run the function #### 
library(magrittr)
library(sf)
x <- deneggs::spde_pred_map(path_lect = path_ovitraps,
                            path_coord = path_coordinates,
                            cve_ent = "31",
                            locality = "Merida",
                            longitude  = "Pocision_X",
                            latitude =  "Pocision_Y",
                            aproximation = "gaussian",
                            integration = "eb",
                            k = 30,
                            plot = TRUE,
                            week = 4,
                            var = "Huevecillos",
                            cell_size = 2000,
                            alpha = .99,
                            palette_vir  = "magma",
                            leg_title = "Huevos")

names(x)
x$dics |>
    dplyr::arrange(dic)
x$map
