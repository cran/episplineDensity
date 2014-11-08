\name{preprocess.data}
\alias{preprocess.data}
\title{
Preprocess data to construct epiparameters.
}
\description{
The epispline parameters are the data plus lower and upper bounds on the
support of the estimated density.
}
\usage{
preprocess.data(data, lower, upper)
}
\arguments{
  \item{data}{
Numeric vector of data to be used in density estimation.
}
  \item{lower}{
Lower bound on density support. Default: if missing or NULL, the lower bound
is taken to be min(x) - 2 * sd(x). If -inf, the lower bound is taken to be
mean (x) - 10 * sd(x).
}
  \item{upper}{
Upper bound on density support. Default: if missing or NULL, the upper bound
is taken to be max(x) + 2 * sd(x). If inf, the upper bound is taken to be
mean (x) + 10 * sd(x).
}
}
\details{
Data outside the bounds is discarded.
}
\value{
List of epiparameters, with entries
\item{data }{Data as passed, with entries outside the bounds deleted}
\item{m0 }{Lower bound}
\item{mN }{Upper bound}
}
\author{
Sam Buttrey, from matlab code by Royset and Wets
}

\seealso{
\code{\link{expepi}}
}
