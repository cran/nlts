\name{mkx}
\alias{mkx}
\title{Utility function}
\description{
 A function to create matrix of lagged time series.
 Called by various functions.
}

\usage{
    mkx(x, lags)
}
\arguments{
  \item{x}{The univariate time series.}
  \item{lags}{The vector of lags.}
}

\details{
If lags is \code{c(1,4)}, say, then
the function returns a matrix that consist of 
columns x(t-1), x(t-4), x(t).}

\value{
  A matrix of lagged abundances. The last 
  column is the current
} 

\author{Upmanu Lall}

\keyword{misc}
