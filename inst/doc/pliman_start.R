## ----global_options, include = FALSE------------------------------------------
knitr::opts_chunk$set(comment = "#", collapse = TRUE, fig.width = 5)

## -----------------------------------------------------------------------------
library(pliman)
leaves <- image_pliman("la_leaves.jpg")
plot(leaves)
count <- analyze_objects(leaves, marker = "id")

## ----leaf6--------------------------------------------------------------------
area <- 
  get_measures(count,
               id = 6,
               area ~ 4)
str(area)
# plot the area to the segmented image
image_segment(leaves, index = "NB", verbose = FALSE)
plot(leaves)
plot_measures(area, measure = "area")


## -----------------------------------------------------------------------------
area_dpi <- get_measures(count, dpi = 83.5)
plot(leaves)
plot_measures(area_dpi,
              measure = "area",
              vjust = -25)

## -----------------------------------------------------------------------------
soy <- image_pliman("soybean_touch.jpg")
plot(soy)

# Count the objects in the image
grains <- analyze_objects(soy)

# Draws the object id (by default)
plot_measures(grains)

## -----------------------------------------------------------------------------
img <- image_pliman("sev_leaf.jpg")
# Computes the symptomatic area
measure_disease(img = img,
                index_lb = "B", # to remove the background
                index_dh = "NGRDI", # to isolate the diseased area
                threshold = c("Otsu", 0), # You can also use the Otsu algorithm in both indexes (default)
                plot = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  img <- image_pliman("sev_leaf.jpg", plot = TRUE)
#  measure_disease_iter(img, viewer = "mapview")

## -----------------------------------------------------------------------------
img <- image_pliman("soy_green.jpg")
# Segment the foreground (grains) using the normalized blue index
# Shows the average value of the blue index in each object

rgb <- 
  analyze_objects(img,
                  object_index = "B",
                  pixel_level_index = TRUE)
# Plots the B index for each grain
plot_measures(rgb, measure = "B")

