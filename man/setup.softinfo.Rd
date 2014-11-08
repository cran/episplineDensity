\name{setup.softinfo}
\alias{setup.softinfo}
\title{
Set up softinfo for exponential epi-splines.
}
\description{
The softinfo prescribes constraints imposed on the density estimate.
}
\usage{
setup.softinfo(N = 10, order = 2, warn = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{N}{
Integer giving number of interior mesh points (knots) for the splines.
Default 10.
}
  \item{order}{
Integer giving the order for the polynomial splines. Default 2, and
only 2 is permitted right now.
}
  \item{warn}{
Logical: emit warnings when contradictory conditions are imposed?
Currently ignored. It is easy to generate contradictory conditions
and the code only tests for a few combinations.
}
  \item{\dots}{
A set of named arguments describing the possible values of soft
information. The current possibilities are:
\describe{
\item{M}{Numeric : number of points in each segment at which Fisher
and other constraints are imposed}
\item{unimodal}{Logical: if \code{TRUE}, require that the density be unimodal.}
\item{unimodaluppertail, unimodallowertail}{Numeric. Impose unimodality
only on the lower or upper \code{floor (N * unimodallowertail)} or
\code{floor (N * unimodaluppertail)} segments.}
\item{monotone}{Character: describes what sort of monotonicty is required.
Possible values "nondecreasing" or "nonincreasing".}
\item{lowerboundsk, upperboundsk}{Numeric, length \code{N+1}. 
Bounds on epiparameters \code{s[0]} through \code{s[N]}. See
\code{\link{expepi}} for details. Default: \code{-1000} for lower,
\code{+1000} for upper.}
\item{lowerboundak0, upperboundak0, lowerboundakp, upperboundakp}{Numeric,
length \code{N}. Lower and upper bounds on the linear coefficients
(ak0) and quadratic coefficients (akp) of the splines.}
\item{continuous, continuousDiff, lsc, usc}{Logicals. When \code{TRUE}, 
require continuity, continuous differentiability, 
or that the density be lower semi-continuous (\code{lsc}) or upper
semi-continuous (\code{usc}).}
\item{pointwiseFisherLower, pointwiseFisherUpper}{Numeric, length
1. Lower and upper bound on the value of slope/value at every point 
in every segment.}
\item{lowerdensityvalue,  upperdensityvalue}{Numeric vectors of length
\code{N} giving lower and upper bounds on the density estimate inside
segments.}
\item{lowerdensityvalueEndpt,  upperdensityvalueEndpt}{Numeric vectors of length
\code{N + 1} giving lower and upper bounds on the density estimate 
at segment end points.}
\item{lowerdensityvalueSpecific}{Two-column numeric matrix. Each row
has an x value and a density value and the density estimate is constrained
to be at least \code{lowerdensityvalueSpecific[j,2]} at 
\code{x = lowerdensityvalueSpecific[j,1]} for each row \code{j}.}
\item{KLDivergenceUpper, KLDivergenceLower, KLDensity, KLDensityParams}{Upper
 and lower bounds on the KL divergence of the density estimate from
the density whose name is given as an R density function in \code{KLDensity},
e.g. \code{dnorm}, and whose parameters are given as a list in 
\code{DLDensityParams}, e.g. \code{list (mean = 0, sd = 1)}}
\item{upperbound1moment, upperbound2moment}{Numeric; upper bounds on the 
first or second (non-central) moment of the estimate}
}
}
}
\value{
List with any specified values, plus any defaults (notably M = 5).
}
\author{
Sam Buttrey, after Matlab code by Royset and Wets.
}

\seealso{
\code{\link{expepi}}
}
