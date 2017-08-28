\name{summary.lomb}
\alias{summary.lomb}
\title{Summarizes Lomb periodograms}
\description{
  `summary' method for class "lomb".  
}

\usage{
    \method{summary}{lomb}(object, \dots)
}
\arguments{
  \item{object}{an object of class "lomb", 
  usually, as a result of a call to \code{spec.lomb}.}
  \item{\dots}{no other arguments currently allowed}
}

\value{
  A list summarizing the analysis is printed:
  \item{period}{the dominant period.}
  \item{p.val}{the p.value.}
 } 

\seealso{
\code{\link{spec.lomb}} 
}

\keyword{ts}
