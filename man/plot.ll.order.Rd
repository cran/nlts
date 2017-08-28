\name{plot.ll.order}
\alias{plot.ll.order}
\title{Plots nonparametric cross-validation for time-series order}
\description{
  `plot' method for class "ll.order".  
}

\usage{
    \method{plot}{ll.order}(x, \dots)
}

\arguments{
  \item{x}{an object of class "ll.order", usually, as a result of
    a call to \code{ll.order}.}
  \item{\dots}{no other arguments currently allowed}
}

\details{
    See \code{\link{ll.order}} for details. 
}

\value{
 A xy-plot of minimum cross-valiadation error against order is produced.
} 

\seealso{
\code{\link{ll.order}} 
}

\keyword{ts}
