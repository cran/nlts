\name{predict.ll.order}
\alias{predict.ll.order}
\title{Predicted values from ll.order.}
\description{
  Calculates the leave-one-out predicted values for the optimal ll.order object
}

\usage{
    \method{predict}{ll.order}(object, \dots)
}

\arguments{
  \item{object}{an object of class "ll.order", usually, as a result of
    a call to \code{ll.order}.}
  \item{\dots}{no other arguments currently allowed}
}

\details{
    See \code{\link{ll.order}} for details. 
}

\value{
 A data frame with observed and predicted values for the optimal ll-model is returned.
} 

\seealso{
\code{\link{ll.order}} 
}

\keyword{ts}
