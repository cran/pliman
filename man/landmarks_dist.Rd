% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_landmarks.R
\name{landmarks_dist}
\alias{landmarks_dist}
\title{Distances between landmarks}
\usage{
landmarks_dist(x)
}
\arguments{
\item{x}{An object computed with \code{\link[=landmarks]{landmarks()}}.}
}
\value{
A matrix with the distances for each landmark combination.
}
\description{
Computes the distance between two landmarks as the square root of the sum of
the squared differences between each coordinate (Claude, 2008).
}
\note{
Borrowed from Claude (2008), pp. 49
}
\examples{
if(isTRUE(interactive())){
library(pliman)
img <- image_pliman("potato_leaves.jpg")
x <- landmarks(img)
landmarks_dist(x)
}

}
\references{
Claude, J. (2008) \emph{Morphometrics with R}, Use R! series,
Springer 316 pp.
}
