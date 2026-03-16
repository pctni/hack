# Exercise 3: Advanced Routing & Network Analysis
# Goals:
# 1. Use existing route networks or generate new ones using 'osmextract'.
# 2. Perform a simple accessibility or route-level analysis.

library(sf)
library(stplanr)
# library(osmextract)

# 1. Load the Route Network
# Download from:
# https://github.com/george-oakman/pctni/raw/refs/heads/main/backend/route_network_fastest.gpkg

# route_network = read_sf("route_network_fastest.gpkg")

# 2. Visualize the Network
# plot(route_network$geom)

# 3. Calculate Network Potential
# Use the route network to estimate cycling potential or map existing flows onto the network.
# Hint: See stplanr::overset or similar for network-level operations.

# Optional: Get OSM data for a specific area (e.g. Belfast)
# belfast_osm = oe_get("Belfast", provider = "geofabrik", download_only = FALSE)
