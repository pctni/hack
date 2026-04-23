library(sf)

# Path to the backend directory where .Rds files are located
backend_dir <- "../backend"
output_dir <- "data"

if (!dir.exists(output_dir)) {
  dir.create(output_dir)
}

# Find all segments .Rds files
rds_files <- list.files(backend_dir, pattern = "^segments_.*\\.Rds$", full.names = TRUE)

message(paste("Found", length(rds_files), "RDS files to convert."))

for (rds_path in rds_files) {
  file_name <- basename(rds_path)
  gpkg_name <- gsub("\\.Rds$", ".gpkg", file_name)
  output_path <- file.path(output_dir, gpkg_name)
  
  message(paste("Converting", file_name, "to", gpkg_name, "..."))
  
  # Read the RDS file
  data <- readRDS(rds_path)
  
  # Check if it's an sf object
  if (inherits(data, "sf")) {
    # Fix potential 'geom' conflict with GPKG
    # 1. If there's a column named 'geom' that is NOT the geometry column, rename it
    if ("geom" %in% colnames(data) && attr(data, "sf_column") != "geom") {
      colnames(data)[colnames(data) == "geom"] <- "geom_val"
    }
    # 2. If 'geom' IS the geometry column, rename it to 'geometry'
    if (attr(data, "sf_column") == "geom") {
      data <- st_set_geometry(data, "geometry")
    }
    
    # Write to GeoPackage
    st_write(data, output_path, delete_dsn = TRUE, quiet = TRUE)
    message(paste("Successfully saved to", output_path))
  } else {
    warning(paste("File", file_name, "is not an sf object. Skipping."))
  }
}

message("Conversion complete.")
