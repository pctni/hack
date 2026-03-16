# Exercise 2: Origin-Destination (OD) Flow Analysis
# Goals:
# 1. Convert OD data into straight-line flows.
# 2. Calculate Euclidean distance and filter for specific ranges.
# 3. Analyze commuting modes (if data allows) or simple volume.

library(sf)
library(tidyverse)
library(od)
library(tmap)

# 1. Load data from Exercise 1
# zones = read_sf("zones_sdz.gpkg")
# od = read_csv("od_ni_open_filtered.csv")

# 2. Convert to Spatial Flows
# Use od::od_to_sf to create lines between origin and destination centroids
# od_sf = od_to_sf(od, zones)

# 3. Calculate Distances
# od_sf$dist_km = as.numeric(st_length(od_sf)) / 1000

# 4. Filter for Commutable Distances (e.g., 2-5km)
# commutable_flows = od_sf |> filter(dist_km >= 2 & dist_km <= 5)

# 5. Visualize top 100 flows
# top_flows = commutable_flows |> arrange(desc(count)) |> head(100)
# qtm(top_flows, lines.lwd = "count")
