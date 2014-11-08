\name{setup.optargs}
\alias{setup.optargs}
\title{
Set up arguments for global and local optimization programs
}
\description{
The exponential epi-spline scheme uses a global optimization routine from
package nloptr that itself calls a local one. This function produces 
a list of options for either or both.
}
\usage{
setup.optargs(param.length, opts, local.opts)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{param.length}{
Length of parameter vector.
}
  \item{opts}{
Options to global solver. These will be passed as argument "opts"
to \code{\link{nloptr}}. 
}
  \item{local.opts}{
Options to local solver. These will be passed as a list named "local_opts"
attached to the "opts" list above.
}
}
\details{
Default values for opts are 
\code{algorithm = "NLOPT_LD_AUGLAG"}, \code{maxeval = 2500}, 
\code{xtol_rel = 1e-05}, \code{xtol_abs = 1e-05},
and for local.opts,
\code{algorithm = "NLOPT_LD_SLSQP"}, \code{maxeval = 1000},
and \code{xtol_rel = 1e-05}.
}
\value{
List with default opts overridden by any that were supplied, 
plus a list named \code{local_opts} with default local_opts, 
overridden by any that were supplied.
}
\author{
Sam Buttrey
}
\seealso{
\code{\link{expepi}}
}
