\name{plot.lin.order}
\alias{plot.lin.order}
\title{Plots linear cross-validation for time-series order}
\description{
  `plot' method for class "lin.order".  
}

\usage{
    \method{plot}{lin.order}(x, \dots)
}
\arguments{
  \item{x}{an object of class "lin.order", usually, as a result of
    a call to \code{lin.order.cls} or \code{lin.order.mle}.}
  \item{\dots}{no other arguments currently allowed}
}

\value{
 A xy-plot of order against cross-valiadation error is produced.
} 

\seealso{
\code{\link{lin.order.cls}} 
}

\keyword{ts}
