\name{plot.lomb}
\alias{plot.lomb}
\title{Plots Lomb periodograms}
\description{
  `plot' method for class "lomb".  
}

\usage{
    \method{plot}{lomb}(x, \dots)
}
\arguments{
  \item{x}{an object of class "lomb",
  usually, as a result of a call to \code{spec.lomb}.}
  \item{\dots}{no other arguments currently allowed}
}

\value{
  A Lomb periodogram is composed of a xy-plot of 
  amplitude against frequency.
 } 

\seealso{
\code{\link{spec.lomb}} 
}

\keyword{ts}
