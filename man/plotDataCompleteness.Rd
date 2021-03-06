% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDataCompleteness.R
\name{plotDataCompleteness}
\alias{plotDataCompleteness}
\title{Time plots of variable completeness}
\usage{
plotDataCompleteness(MESHdata)
}
\arguments{
\item{MESHdata}{Required. A data frame of MESH time series, as returned by 
\code{read_tb0}}
}
\value{
Returns a \pkg{ggplot2} wrapped facetted plot of data completeness 
(as a line) for each station. Missing periods are indicated by gaps in the
line. The plot is facetted by the variable \code{station} - so you can change
the facetting.
}
\description{
Time plots of variable completeness
}
\examples{
\dontrun{
qvals <- read_tb0("MESH_input_streamflow.tb0", NAvalue = -0.01, values_only = TRUE)
p <- plotDataCompleteness(qvals)
# change facetting
# the y-axis is unimportant, so the plots can be squished vertically
library(ggplot2)
p <- p + facet_wrap(~station, ncol = 2)}
}
\seealso{
\code{\link{read_tb0}}
}
\author{
Kevin Shook
}
