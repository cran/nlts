\name{lin.order.cls}
\alias{lin.order.cls}
\title{The order of a time series using cross-validation 
of the linear autoregressive model 
(conditional least-squares).}
\description{
  A function to estimate the order of a time series 
  using cross-validation of the linear autoregressive 
  model. Coefficients are estimated using conditional 
  least-squares.
}

\usage{
    lin.order.cls(x, order=1:5, n.cond = 5, echo = TRUE)
    }

\arguments{
  \item{x}{A time series without missing values}
  \item{order}{The candidate orders. The default is 1:5}. 
  \item{n.cond}{The number of observation to condition on. 
        The default is 5 (must be >= max(order))}.
  \item{echo}{if TRUE a counter for the data points and
        the orders is produced to monitor  progress.}

}

\details{
The time series is normalized prior to cross-validation.

Note that if the dynamics is highly nonlinear, the nonparametric 
order-estimators (\code{\link{ll.order}}) may be more appropriate. 
(I coded this 
function to use for comparison with the nonparametric methods, 
because these also uses (nonlinear) conditional least-squares.)
}

\value{
  An object of class "lin.order" is returned 
  consisting of the following components: 
  \item{order}{the grid of orders considered.}
  \item{CVd}{the cross-validation errors across the 
    grid of orders.}
} 

\author{Ottar N. Bjornstad \email{onb1@psu.edu}}

\seealso{
\code{\link{summary.lin.order}}
\code{\link{plot.lin.order}}
\code{\link{ll.order}}
}

\examples{
    data(plodia)
    fit <- lin.order.cls(sqrt(plodia), order=1:5)
    \dontrun{plot.lin.order(fit)}
    summary.lin.order(fit)
}

\keyword{ts}
