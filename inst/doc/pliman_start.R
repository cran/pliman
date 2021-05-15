## ----global_options, include = FALSE------------------------------------------
knitr::opts_chunk$set(comment = "#", collapse = TRUE, fig.width = 5)

## -----------------------------------------------------------------------------
library(pliman)
img <- image_import(image_pliman("la_pattern.JPG"))
leaf <- image_import(image_pliman("la_leaf.jpg"))
tmpl <- image_import(image_pliman("la_temp.jpg"))
background <- image_import(image_pliman("la_back.jpg"))
image_combine(img, leaf, tmpl, background)


# Computes the leaf area
area <- 
leaf_area(img = img,
          img_leaf = leaf,
          img_template = tmpl,
          img_background = background,
          area_template = 4,
          text_col = "white")
get_measures(area)

## -----------------------------------------------------------------------------
soy <- image_import(image_pliman("soybean_touch.jpg"))
image_show(soy)

# Count the objects in the image
grains <- count_objects(soy)

# Draws the object id (by default)
plot_measures(grains)

## -----------------------------------------------------------------------------
img <- image_import(image_pliman("sev_leaf.jpg"))
healthy <- image_import(image_pliman("sev_healthy.jpg"))
symptoms <- image_import(image_pliman("sev_sympt.jpg"))
background <- image_import(image_pliman("sev_back.jpg"))
image_combine(img, healthy, symptoms,background)

# Computes the symptomatic area
symptomatic_area(img = img,
                 img_healthy = healthy,
                 img_symptoms = symptoms,
                 img_background = background,
                 show_image = TRUE)

## -----------------------------------------------------------------------------
img <- image_import(image_pliman("soy_green.jpg"))
# Segment the foreground (grains) using the normalized blue index
# Shows the average value of the blue index in each object
rgb <- objects_rgb(img, marker = "index")

# Draw the object id
image_show(img)
plot_measures(rgb)

# plot the distribution of RGB values of each object
plot(rgb)

