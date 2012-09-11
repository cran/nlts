\name{plot.contingency.periodogram}
\alias{plot.contingency.periodogram}
\title{Plots contingency periodograms}
\description{
  `plot' method for class "contingency.periodogram".  
}

\usage{
    \method{plot}{contingency.periodogram}(x, \dots)
}
\arguments{
  \item{x}{an object of class "contingency.periodogram",
  usually, as a result of a call to \code{contingency.periodogram}.}
  \item{\dots}{no other arguments currently allowed}
}

\value{
 A contingency periodogram is plotted. The line represents the 
 critical value based on the chi-squared test (95\%).
 } 

\seealso{
\code{\link{contingency.periodogram}} 
}

\keyword{ts}
