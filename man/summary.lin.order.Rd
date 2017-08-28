\name{summary.lin.order}
\alias{summary.lin.order}
\title{Summarize linear cross-validation for time-series order}
\description{
  `summary' method for class "lin.order".  
}

\usage{
    \method{summary}{lin.order}(object, \dots)
}
\arguments{
  \item{object}{an object of class "lin.order", usually, as a result of 
    a call to \code{lin.order.cls} or \code{lin.order.mle}.}
  \item{\dots}{no other arguments currently allowed}
}

\value{
 A slightly prettyfied version of the object is printed.
} 

\seealso{
\code{\link{lin.order.cls}} 
}

\keyword{ts}
