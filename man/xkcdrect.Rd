% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/xkcdrect.R
\name{xkcdrect}
\alias{xkcdrect}
\title{Draw fuzzy rectangles}
\usage{
xkcdrect(mapping, data, ...)
}
\arguments{
\item{mapping}{Mapping between variables and aesthetics generated by \code{\link[ggplot2]{aes}}. See Details.}

\item{data}{Dataset used in this layer.}

\item{...}{Optional arguments.}
}
\value{
A layer.
}
\description{
It draws fuzzy rectangles.
}
\details{
This function draws fuzzy rectangles.

It plots rectangles. The following aesthetics are required:
\enumerate{
  \item xmin
  \item ymin
  \item xmax
  \item ymax
}
Additionally, you can use the aesthetics of \code{\link[ggplot2]{geom_path}} and \code{\link[ggplot2]{geom_rect}}.
}
\examples{
volunteers <- data.frame(year=c(2007:2011),
                        number=c(56470, 56998,59686, 61783, 64251))
p <- ggplot() + xkcdrect(aes(xmin = year,
                             xmax= year +0.3,
                             ymin=number,
                             ymax = number + 3600),
                         volunteers,
                         fill="red", colour="black")
p
}
\seealso{
\code{\link[ggplot2]{aes}},  \code{\link[ggplot2]{geom_path}}
}
\keyword{manip}

