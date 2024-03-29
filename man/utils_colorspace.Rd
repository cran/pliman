% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_imagem.R
\name{utils_colorspace}
\alias{utils_colorspace}
\alias{rgb_to_hsb}
\alias{rgb_to_srgb}
\alias{rgb_to_lab}
\title{Convert between colour spaces}
\usage{
rgb_to_hsb(object)

rgb_to_srgb(object)

rgb_to_lab(object)
}
\arguments{
\item{object}{An \code{Image} object, an object computed with
\code{analyze_objects()} with a valid \code{object_index} argument, or a
\code{data.frame/matrix}. For the last, a three-column data (R, G, and B, respectively)
is required.}
}
\value{
A data frame with the columns of the converted color space
}
\description{
\code{rgb_to_srgb()} Transforms colors from RGB space (red/green/blue) to
Standard Red Green Blue (sRGB), using a gamma correction of 2.2.
\itemize{
\item \code{rgb_to_hsb()} Transforms colors from RGB space (red/green/blue) to HSB
space (hue/saturation/brightness).
\item \code{rgb_to_lab()} Transforms colors from RGB space (red/green/blue) to
CIE-LAB space
}

It is assumed that
}
\examples{
if(interactive()){
library(pliman)
img <- image_pliman("sev_leaf.jpg")
rgb_to_lab(img)

# analyze the object and convert the pixels
anal <- analyze_objects(img, object_index = "B", pixel_level_index = TRUE)
rgb_to_lab(anal)
}
}
\author{
Tiago Olivoto \email{tiagoolivoto@gmail.com}
}
