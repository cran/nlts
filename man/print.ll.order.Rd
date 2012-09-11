\name{print.ll.order}
\alias{print.ll.order}
\title{Prints nonparametric cross-validation for time-series order}
\description{
  `print' method for class "ll.order".
}

\usage{
    \method{print}{ll.order}(x, verbose = FALSE, \dots)
}

\details{
    See \code{\link{ll.order}} for details. 
}

\arguments{
  \item{x}{an object of class "ll.order", usually, as a result of
    a call to \code{ll.order}.}
  \item{verbose}{if TRUE provides a raw-printing of the object.}
  \item{\dots}{no other arguments currently allowed}
}

\value{
 A matrix summarizing the minimum cross-validation 
 error (cv.min) and the associated Gaussian-kernel 
 bandwidth (bandwidth.opt) and model degrees-of-freedom 
 for each order considered.
} 

\seealso{
\code{\link{ll.order}} 
}

\keyword{ts}
