\name{plot.episplineDensity}
\alias{plot.episplineDensity}
\title{
Plot an exponential epi-spline density esimate
}
\description{
Plot a density estimate, plus the original data
}
\usage{
\method{plot}{episplineDensity} (x, \ldots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Output from a call to expepi
}
  \item{\dots}{
Other arguments, currently ignored
}
}
\details{
This plots the \code{x.pts} and \code{y.est} items from the
\code{x} object, and adds red circles for the original observations.
}
\value{
None.
}
\author{
Sam Buttrey
}

\seealso{
\code{\link{expepi}}
}
