# Exercise 1: Loading and Visualizing NI Zones
# Goals:
# 1. Download/Load 2021 Super Data Zones (SDZ) and Origin-Destination (OD) data.
# 2. Join datasets and visualize top commuting destinations.

library(sf)
library(tidyverse)
library(tmap)

# 1. Load Data
# Download from: 
# https://github.com/george-oakman/pctni/raw/refs/heads/main/pctni/zones_sdz.gpkg
# https://github.com/george-oakman/pctni/raw/refs/heads/main/pctni/od_ni_open_filtered.csv

# Placeholder: Adjust paths to your local data location
# zones = read_sf("zones_sdz.gpkg")
# od = read_csv("od_ni_open_filtered.csv")

# 2. Explore Data
# View(zones)
# View(od)

# 3. Join and Visualize
# Join OD counts back to destination zones to see where people work
# dest_counts = od |> 
#   group_by(workplace_area_code) |> 
#   summarise(total_commuters = sum(count))

# zones_joined = zones |> 
#   left_join(dest_counts, by = c("sdz2021_cd" = "workplace_area_code"))

# qtm(zones_joined, fill = "total_commuters")
