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
area
# plot the area to the segmented image
image_segment(leaves, index = "NB", verbose = FALSE)
plot_measures(area, measure = "area")


## -----------------------------------------------------------------------------
get_measures(count, dpi = 84)

## -----------------------------------------------------------------------------
soy <- image_pliman("soybean_touch.jpg")
plot(soy)

# Count the objects in the image
grains <- analyze_objects(soy)

# Draws the object id (by default)
plot_measures(grains)

## -----------------------------------------------------------------------------
img <- image_pliman("sev_leaf.jpg")
healthy <- image_pliman("sev_healthy.jpg")
symptoms <- image_pliman("sev_sympt.jpg")
background <- image_pliman("sev_back.jpg")
image_combine(img, healthy, symptoms,background)

# Computes the symptomatic area
measure_disease(img = img,
                img_healthy = healthy,
                img_symptoms = symptoms,
                img_background = background,
                show_image = TRUE)

## -----------------------------------------------------------------------------
img <- image_pliman("soy_green.jpg")
# Segment the foreground (grains) using the normalized blue index
# Shows the average value of the blue index in each object

rgb <- 
  analyze_objects(img,
                  object_index = "B",
                  marker = "index")


# plot the distribution of RGB values of each object
plot(rgb)

