% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_landmarks.R
\name{calibrate}
\alias{calibrate}
\title{Calibrates distances of landmarks}
\usage{
calibrate(img, viewer = get_pliman_viewer())
}
\arguments{
\item{img}{An \code{Image} object}

\item{viewer}{The viewer option. If not provided, the value is retrieved
using \code{\link[=get_pliman_viewer]{get_pliman_viewer()}}. This option controls the type of viewer to use
for interactive plotting. The available options are "base" and "mapview".
If set to "base", the base R graphics system is used for interactive
plotting. If set to "mapview", the mapview package is used. To set this
argument globally for all functions in the package, you can use the
\code{\link[=set_pliman_viewer]{set_pliman_viewer()}} function. For example, you can run
\code{set_pliman_viewer("mapview")} to set the viewer option to "mapview" for
all functions.}
}
\value{
A numeric (\code{double}) scalar value indicating the scale (in pixels per
unit of known distance).
}
\description{
Calibrating the actual size is possible if any interlandmark distance on the
image is known. calibrate() can be used to determine the size of a known
distance (cm) on the graph. I invite users to photograph the object together
with a scale (e.g., ruler, micrometer...).
}
\examples{
if(isTRUE(interactive())){
library(pliman)
#### compute scale (dots per unit of known distance) ####
# only works in an interactive section
# objects_300dpi.jpg has a known resolution of 300 dpi
img <- image_pliman("objects_300dpi.jpg")
# Larger square: 10 x 10 cm
# 1) Run the function calibrate()
# 2) Use the left mouse button to create a line in the larger square
# 3) Declare a known distance (10 cm)
# 4) See the computed scale (pixels per cm)
calibrate(img)

# scale ~118
# 118 * 2.54 ~300 DPI
}
}
\references{
Claude, J. (2008) \emph{Morphometrics with R}, Use R! series,
Springer 316 pp.
}
