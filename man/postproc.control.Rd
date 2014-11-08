\name{postproc.control}
\alias{postproc.control}
\title{
Set options for post-processing of expepi output
}
\description{
Generate a list of options for post-processing expepi output.
}
\usage{
postproc.control(numevalpts = 10000, pic.types = c("1"), normalize.to.1 = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{numevalpts}{
Integer, giving number of equally-spaced points at which to compute density
estimate. Default 10,000.
}
  \item{pic.types}{
Character vector, naming the types of pictures produced. Default "1",
which produces a graph of the density with points in red circles.
}
  \item{normalize.to.1}{
The density should integrate to exactly 1, but sometimes the numeric
value is a little different from 1. If this is TRUE, the density's values
are scaled so that the integral is exactly 1.
}
}
\value{
A list of preprossing options with the values of the arguments.
}
\author{
Sam Buttrey
}
\note{
Currently only one picture is supported.
}

\seealso{
\code{\link{expepi}}, ~~~
}
