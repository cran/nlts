\name{lin.test}
\alias{lin.test}
\title{A Tukey one-degree-of-freedom test for linearity in time series.}

\description{
  a function to test the permissibility of the linear autoregressive model: 
  
  N(t) = a0 + a1N(t-1) + a2N(t-2) + ... +  adN(t-d) + e(t )
  
  against the alternative: 
  
  Nt = F(N(t-1), N(t-2), ..., N(t-d)) + e(t)

}

\usage{
    lin.test(x, order)
    }

\arguments{
  \item{x}{A time series (vector without missing values).}
  \item{order}{a scalar representing the order to be considered.}
}

\details{
  This is the Tukey one-degree-of-freedom test of linearity 
  developed by Tsay (1986). Orders up to 5 is 
  permissible. [although the code is easily extended]. 
}

\value{
  A vector is returned consisting of the asymtpotic F-value, 
  the associated numerator and denominator d.f.'s and 
  asymptotic p.val for the test of linearity
} 

\references{
  Tsay, R.S. (1986) Nonlinearity tests for time series. Biometrika, 73, 461-466.
}

\author{Ottar N. Bjornstad \email{onb1@psu.edu}}

\seealso{
\code{\link{plot.contingency.periodogram}}
}

\examples{
   data(plodia)
   lin.test(sqrt(plodia), order = 3)
}

\keyword{ts}
