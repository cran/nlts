\name{summary.specar.ci}
\alias{summary.specar.ci}
\title{Summarizes ar-spectra with CI's}
\description{
  `summary' method for class "specar.ci".  
}

\usage{
    \method{summary}{specar.ci}(object, period=TRUE, \dots)
}
\arguments{
  \item{object}{an object of class "specar.ci",
  usually, as a result of a call to \code{specar.ci}.}
  \item{period}{If TRUE the summary is given in terms of
  the period, if false it is in terms of the frequency}
  \item{\dots}{no other arguments currently allowed}
}

\value{
  A list summarizing the analysis is printed:
  \item{period}{the dominant period.}
  \item{p.val}{the p.value.}
 } 

\seealso{
\code{\link{specar.ci}} 
}

\keyword{ts}
