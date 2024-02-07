
# Step 1. define the path ####
path_ovitraps <- "/Users/fdzul/Library/CloudStorage/OneDrive-Personal/datasets/CENAPRECE/2024/14_jalisco"
path_coordinates <- paste(path_ovitraps, "DescargaOvitrampasMesFco.txt", sep = "/")

# Step 2. run the function #### 
x <- deneggs::eggs_hotspots(path_lect = path_ovitraps,
                       path_coord = path_coordinates,
                       cve_ent = "14",
                       locality  = c("Guadalajara", "Zapopan",
                                     "Tlaquepaque", "Tonalá"),
                       longitude  = "Pocision_X",
                       latitude =  "Pocision_Y",
                       aproximation = "gaussian",
                       integration = "eb",
                       fam = "zeroinflatednbinomial1",
                       k = 30,
                       palette_vir  = "magma",
                       leg_title = "Huevos",
                       plot = TRUE,
                       hist_dataset = FALSE,
                       sem = 4,
                       var = "eggs",
                       cell_size = 2000,
                       alpha = .99)
x$map


