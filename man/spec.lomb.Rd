\name{spec.lomb}
\alias{spec.lomb}
\title{The funcion to estimate the Lomb periodogram 
  for unevenly sampled data}
\description{
  The function to estimate the Lomb periodogram for
  a spectral analysis of unevenly sampled data.
}

\usage{
    spec.lomb(y, x, freq = NULL)
    }

\arguments{
  \item{y}{vector of length n representing the
     unevenly sampled time series.}
  \item{x}{the a vector (of length n) representing 
     the times of observation.}
  \item{freq}{the frequencies at which the 
     periodogram is to be calculated. If 
     NULL the canonical frequencies (the 
     Fourier frequencies) are used.}
}

\details{
This is the Lomb periodogram to test for periodicity in 
time series of unevenly sampled data. 

Missing values should be deleted in both x and y 
before execution.
}

\value{
  An object of class "lomb" is returned 
  consisting of the following components:  
  \item{freq}{the frequencies as supplied.}
  \item{spec}{the estimated amplitudes at the different
     frequencies.}
  \item{f.max}{the frequency of maximum amplitude.}
  \item{per.max}{the corresponding period of 
     maximum amplitude.}
  \item{p}{the level of significance associated with 
     the max period.} 
} 

\references{
 Lomb, N.R. (1976) Least-squares frequency-analysis of 
 unequally spaced data. Astrophysics and Space 
 Science 39, 447-462.
}

\author{Ottar N. Bjornstad \email{onb1@psu.edu}}

\seealso{
\code{\link{plot.lomb}}
\code{\link{summary.lomb}}
}

\examples{
   data(plodia)

    y <- sqrt(plodia)
    x <- 1:length(y) 

    #make some missing values
    y[10:19] <- NA; x[10:19] <- NA 
    #omit NAs
    y <- na.omit(y); x <- na.omit(x) 

    #the lomb p'gram
    fit <- spec.lomb(y, x) 
    summary.lomb(fit)
    \dontrun{plot.lomb(fit)}
 }

\keyword{ts}
