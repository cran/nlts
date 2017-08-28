\name{ll.order}
\alias{ll.order}
\title{Consistent nonlinear estimate of the order 
using local polynomial regression.}
\description{
  A function to estimate the order of a time series 
  using the nonparametric order selection method of 
  Cheng and Tong (1992, 1994) as modified by
   Yao & Tong (1994; see also Fan, Yao & Tong 1996). 
   The method uses leave-one-out cross-validation of 
   the locally linear regression against lagged-abundances.
}

\usage{
    ll.order(x, order = 1:5, step = 1, deg = 2, bandwidth = c(seq(0.3,
    1.5, by = 0.1), 2:10), cv = TRUE, echo = TRUE)
    }

\arguments{
  \item{x}{A time series without missing values.}
  \item{order}{The candidate orders. The default is 1:5.}
  \item{step}{The time step for predicition.}
  \item{deg}{The degree of the local polynomial.}
  \item{bandwidth}{The candidate bandwidths to be considered.}
  \item{cv}{if TRUE leave-one-out crossvalidation will be performed.}
  \item{echo}{if TRUE a counter shows the progress}
}

\details{
The time series is normalized prior to cross-validation.

A Gaussian kernel is used for the locally linear regression. 

The bandwidth is optimized using crossvalidation. If 
a single bandwidth is provided, no cross validation 
of bandwidth will be carried out. Highly nonlinear 
data will require more narrow bandwidths. If NA is 
returned it may be because the min bandwidth 
considered is too small relative to the density of data. 

Missing values are NOT permitted.

If \code{deg} is set to 0, the order is estimated on the basis
of the Nadaraya-Watson (locally constant) estimator of 
the conditional expecation against lagged-abundances 
(Cheng and Tong 1992, 1994). The function subsumes 
the \code{nw.order} of the previous S-plus nlt-library.

The function requires Loader's \code{locfit}-library.
}

\value{
  An object of class "ll.order" is returned 
  consisting of the following components: 
  \item{grid}{the grid of orders, bandwidths, and CV's.}
  \item{grid$order}{the orders.}
  \item{grid$CV}{the cross-validation score across the 
    grid of orders and bandwidths. (If \code{cv = TRUE}).}
  \item{grid$GCV}{the generalized cross-validation score.}
  \item{grid$bandwidth}{the bandwidths.}
  \item{grid$df}{the degrees of freedom of the fitted model.}
  
  \item{order}{the vector of orders considered.}
  \item{deg}{The degree of the local polynomial.}
} 

\references{
Cheng, B. & Tong, H. (1992) On consistent nonparametric 
order determination and chaos. Journal of Royal 
Statistical Society B, 54, 427-449.

Cheng, B. & Tong, H. (1994) Orthogonal projection, 
embedding dimension and sample size in chaotic 
time series from a statistical perspective. 
Philosophical Transactions of the Royal 
Society London, A. , 348, 325-341.

Fan, J., Yao, Q., & Tong, H. (1996) Estimation of 
conditional densities and sensitivity measures 
in nonlinear dynamical systems. Biometrika, 83, 189-206.

Yao, Q. & Tong, H. (1994) Quantifying the influence 
of initial values on non-linear prediction. 
Journal of Royal Statistical Society B, 56, 701-725.

Bjornstad, O.N., Sait, S.M., Stenseth, N.C., Thompson, 
D.J., & Begon, M. (2001) Coupling and the impact of 
specialised enemies on the dimensionality of 
prey dynamics. Nature, 409, 1001-1006.

Loader, C. (1999) Local Regression and Likelihood. 
Springer, New York.
}

\author{Ottar N. Bjornstad \email{onb1@psu.edu}}

\seealso{
\code{\link{summary.ll.order}}
\code{\link{plot.ll.order}}
}

\examples{
   data(plodia)

   fit1 <- ll.order(sqrt(plodia), order=1:3, bandwidth
               = seq(0.5, 1.5, by = 0.5)) 

    \dontrun{plot.ll.order(fit1)}

    summary.ll.order(fit1)
}

\keyword{ts}
