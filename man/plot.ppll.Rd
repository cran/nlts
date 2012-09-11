\name{plot.ppll}
\alias{plot.ppll}
\title{Ploting function for prediction profile objects}
\description{
  `plot' method for class "ppll".
}

\usage{
    \method{plot}{ppll}(x, \dots)
}

\arguments{
  \item{x}{an object of class "ppll", usually, as a result of
    a call to \code{prediction.profile.ll}.}
  \item{\dots}{no other arguments currently allowed}
}

\details{
    See \code{\link{prediction.profile.ll}} for details.
}

\value{
 A xy-plot of one minus the cross-valiadation error (i.e. the prediction
 accuracy against prediction time step.
} 

\seealso{
\code{\link{prediction.profile.ll}}
}

\keyword{ts}
