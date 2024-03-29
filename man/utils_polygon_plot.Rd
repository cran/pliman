% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_polygon.R
\name{utils_polygon_plot}
\alias{utils_polygon_plot}
\alias{plot_contour}
\alias{plot_polygon}
\alias{plot_mass}
\alias{plot_ellipse}
\title{Utilities for plotting polygons}
\usage{
plot_contour(x, id = NULL, col = "black", lwd = 1, ...)

plot_polygon(
  x,
  fill = "gray",
  random_fill = TRUE,
  points = FALSE,
  merge = TRUE,
  border = "black",
  alpha = 1,
  add = FALSE,
  nrow = NULL,
  ncol = NULL,
  aspect_ratio = 1,
  show_id = TRUE,
  xlim = NULL,
  ylim = NULL,
  ...
)

plot_mass(x, id = NULL, col = "black", cex = 1, lwd = 1)

plot_ellipse(object, id = NULL, col = "black", lwd = 1)
}
\arguments{
\item{x}{A 2-column matrix with the \code{x} and \code{y} coordinates.}

\item{id}{The object identification (numeric) to plot the contour/ellipse. By
default (\code{id = NULL}), the contour is plotted to all objects.}

\item{col, lwd, cex}{The color, width of the lines, and size of point,
respectively.}

\item{...}{\itemize{
\item For \code{plot_contour()} and \code{plot_ellipse()} further arguments passed on to
\code{\link[graphics:lines]{graphics::lines()}}.
\item For \code{plot_mass()}, further arguments passed on to \code{\link[graphics:points]{graphics::points()}}.
\item For \code{plot_polygon()}, further arguments passed on to
\code{\link[graphics:polygon]{graphics::polygon()}}.
}}

\item{fill, border, alpha}{The color to fill the polygon, the color of the
polygon's border, and the alpha transparency (1 opaque, 0 transparent).}

\item{random_fill}{Fill multiple objects with random colors? Defaults to
\code{TRUE}.}

\item{points}{Plot the points? Defaults to \code{FALSE}.}

\item{merge}{Merge multiple objects into a single plot? Defaults to \code{TRUE}.
If \code{FALSE}, a single call \code{plot()} will be used for each objects. Use
\code{nrow} and \code{ncol} to control the number of rows and columns of the window.}

\item{add}{Add the current plot to a previous one? Defaults to \code{FALSE}.}

\item{nrow, ncol}{The number of rows and columns to use in the composite
image. Defaults to \code{NULL}, i.e., a square grid is produced.}

\item{aspect_ratio}{The x/y aspect ratio. Defaults to \code{1}. This will set up
the window so that one data unit in the y direction is equal to one data
unit in the x direction. Set \code{aspect_ratio = NULL} to fit the object to the
window size.}

\item{show_id}{Shows the object id? Defaults to \code{TRUE}.}

\item{xlim, ylim}{A numeric vector of length 2 (min; max) indicating the range
of \code{x} and \code{y}-axes.}

\item{object}{An object computed with \code{\link[=analyze_objects]{analyze_objects()}}.}
}
\value{
a \code{NULL} object.
}
\description{
\itemize{
\item \code{plot_contour()} Plot contour lines.
\item \code{plot_polygon()} Plots a polygon describing the objects.
\item \code{plot_mass()} Plots the center of mass along with maximum and minimum
radius.
\item \code{plot_ellipse()} Plots an ellipse that fits the major and minor axis for
each object.
}
}
\examples{
plot_polygon(contours)
plot_contour(contours[[1]], id = 6, col = "red", lwd = 3)
}
