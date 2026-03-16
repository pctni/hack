# PCTNI Hackathon Exercises

Welcome to the PCTNI Afternoon Hackathon! This session is designed to get you familiar with the Northern Ireland (NI) spatial datasets and how to use them for active travel analysis.

## Session Information
- **Date**: Monday 18th May
- **Time**: 14:00 - 17:00
- **Location**: In-person / Online

## Agenda
- **14:00 - 14:15**: Introduction & Environment Setup
- **14:15 - 15:00**: Exercise 1 - Loading and Visualizing NI Zones
- **15:00 - 15:15**: Break
- **15:15 - 16:15**: Exercise 2 - Origin-Destination (OD) Flow Analysis
- **16:15 - 17:00**: Exercise 3 - Advanced: Routing & Impact Assessment

## Exercises
Detailed instructions can be found in the `exercises/` directory:
1. `01-loading-data.R`: Load `zones_sdz.gpkg` and `od_ni_open_filtered.csv`. Join them and visualize the zones using `sf` and `tmap`.
2. `02-flow-analysis.R`: Convert OD data to straight-line flows using `od::od_to_sf`. Calculate distances and filter for commutable ranges (e.g., 2-10km).
3. `03-advanced.R`: Use the provided `route_network_fastest.gpkg` or `osmextract` to perform network analysis for a specific local authority.

## Data Download
Datasets can be downloaded from the main PCTNI repository or using the provided links in each exercise script.
For local use, ensure you have:
- `zones_sdz.gpkg`
- `od_ni_open_filtered.csv`
- `SOA2011_simplified.geojson`
