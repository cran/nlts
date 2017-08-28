\name{add.test}
\alias{add.test}
\title{The Lagrange multiplier test for additivity in a timeseries}
\description{
  add.test is a function to test the permissibility of the 
  additive autoregressive model: 

  N(t) = f1(N(t-1)) + f2(N(t-2)) + ... +  fd(N(t-d)) + e(t )

  against the alternative: 

  N(t) = F(N(t-1), N(t-2), ..., N(t-d)) + e(t)
}

\usage{
    add.test(x, order, n.cond = FALSE)
    }

\arguments{
  \item{x}{A time series (vector without missing values).}
  \item{order}{a scalar representing the order to be considered.}
  \item{n.cond}{The number of observation to condition on. 
      The default is \code{order} (must be >= \code{order})}.
}

\details{
  This is the Lagrange multiplier test for additivity 
  developed by Chen et al. (1995: test II). 
  
  The function requires the \code{acepack}-library.
}

\value{
  a vector is returned consisting of the asymtpotic 
  chi-square value, the associated d.f. 
  and asymptotic p.val for the test of additivity.
} 

\references{
  Chen, R., Liu, J.S. & Tsay, R.S. (1995) Additivity tests 
  for nonlinear autoregression. Biometrika, 82, 369-383.
  
  Bjornstad, O.N., Begon, M., Stenseth, N.C., Falck, W.,
  Sait, S.M., & Thompson, D.J. (1998) Population dynamics 
  of the Indian meal moth: demographic stochasticity and 
  delayed regulatory mechanisms. Journal of Animal 
  Ecology, 67, 110-126.
}

\author{Ottar N. Bjornstad \email{onb1@psu.edu}}

\examples{
     data(plodia)
     add.test(sqrt(plodia), order = 3)
}

\keyword{ts}
