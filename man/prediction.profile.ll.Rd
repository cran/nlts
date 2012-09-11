\name{prediction.profile.ll}
\alias{prediction.profile.ll}
\alias{print.ppll}
\title{Nonlinear forecasting at verying lags using local polynomial regression.}
\description{
  A wrapper function around \code{ll.order} to calculate prediction profiles
  (a la Sugihara \& May 1990 and Yao \& Tong 1994). The method uses leave-one-out
  cross-validation of the local regression (with CV optimized bandwidth)
  against lagged-abundances at various lags.
}

\usage{
    prediction.profile.ll(x, step = 1:10, order = 1:5, deg = 2,
    bandwidth = c(seq(0.3, 1.5, by = 0.1), 2:10))
    }

\arguments{
  \item{x}{A time series without missing values.}
  \item{step}{The vector of time steps for predicition.}
  \item{order}{The candidate orders. The default is 1:5.}
  \item{deg}{The degree of the local polynomial.}
  \item{bandwidth}{The candidate bandwidths to be considered.}
}

\details{
  see \code{\link{ll.order}} for details.
}

\value{
  An object of class "ppll" consisting of a list
  with the following components:
  \item{step}{the prediction steps considered.}
  \item{CV}{the cross-validation error.}
  \item{order}{the optimal order for each step.}
  \item{bandwidth}{the otpimal bandwidth for each step.}
  \item{df}{the degrees of freedom for each step.}
}

\references{
Sugihara, G., and May, R.M. (1990) Nonlinear forecasting
as a way of distinguishing chaos from measurement error
in time series. Nature 344, 734-741

Yao, Q. and Tong, H. (1994) Quantifying the influence
of initial values on non-linear prediction. 
Journal of Royal Statistical Society B, 56, 701-725.

Fan, J., Yao, Q., and Tong, H. (1996) Estimation of
conditional densities and sensitivity measures
in nonlinear dynamical systems. Biometrika, 83, 189-206.
}

\author{Ottar N. Bjornstad \email{onb1@psu.edu}}

\seealso{
\code{\link{ll.order}}
}

\examples{
   data(plodia)

     fit1 <- prediction.profile.ll(sqrt(plodia), step=1:3, order=1:3,
          bandwidth = seq(0.5, 1.5, by = 0.5))

    \dontrun{plot.ppll(fit1)}
}

\keyword{ts}
