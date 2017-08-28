\name{contingency.periodogram}
\alias{contingency.periodogram}
\title{The contingency periodogram for periodicity 
in categorical time series}
\description{
  A funcion to estimate 
  the contingency periodogram to test for periodicity 
  in categorical time series.
}

\usage{
    contingency.periodogram(x, maxper = 6, exact=FALSE)
    }

\arguments{
  \item{x}{A  vector representing the categorical
           time series.}
  \item{maxper}{the maximum lag (period) considered.}
  \item{exact}{If TRUE the FISHER exact test is calculated}
}

\details{
This is the contingency periodogram of Pierre Legedre and 
Pierre Dutielle to test for periodicity in categorical 
time series. I have coded the function so as to provide 
both the Fisher exact test and the asymptotic chi-square test. 
}

\value{
  An object of class "contingency.periodogram" is returned 
  consisting of a matrix with a row for each period considered. 
  The columns are: 
  \item{exact.p}{the fischer exact test at each lag (if exact=TRUE).}
  \item{chi-val}{the asymptotic chi-square value.}
  \item{df}{the chi-square degrees-of-freedom.}
  \item{asympt.p}{the chi-squared asymptotic p-value.} 
} 

\references{
 Legendre et al. (1981) The contingency periodogram: A method 
 for identifying rhytms in series of nonmetric ecological 
 data. Journal of Ecology, 69, 965-979.
}

\author{Ottar N. Bjornstad \email{onb1@psu.edu}}

\seealso{
\code{\link{plot.contingency.periodogram}}
}

\examples{
    data(plodia)
    data<-as.factor((scale(plodia) > 0))
    fit <- contingency.periodogram(data, maxper = 9) 
    \dontrun{plot.contingency.periodogram(fit)}
}

\keyword{ts}
