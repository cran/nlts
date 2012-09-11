\name{summary.ll.order}
\alias{summary.ll.order}
\title{Summarize nonparametric cross-validation for time-series order}
\description{
  `summary' method for class "ll.order".  
}

\usage{
    \method{summary}{ll.order}(object, GCV = FALSE, \dots)
}

\details{
    See \code{\link{ll.order}} for details. 
}

\arguments{
  \item{object}{an object of class "ll.order", usually, as a result of 
    a call to \code{ll.order}.}
  \item{GCV}{if TRUE (or if cross-valdiation was not done), uses GCV values.}
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
