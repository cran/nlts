\name{plot.specar.ci}
\alias{plot.specar.ci}
\title{Plots ar-spectra with CI's}
\description{
  `plot' method for class "specar.ci".  
}

\usage{
    \method{plot}{specar.ci}(x, period = TRUE, \dots)
}
\arguments{
  \item{x}{an object of class "specar.ci",
  usually, as a result of a call to \code{\link{specar.ci}}.}
  \item{period}{if TRUE x-axis is period, if FALSE frequency.}
  \item{\dots}{no other arguments currently allowed}
}

\value{
  A xy-plot of amplitude against period (or frequency).
 } 

\seealso{
\code{\link{specar.ci}} 
}

\keyword{ts}
