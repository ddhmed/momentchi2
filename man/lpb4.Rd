% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/lpb4.R
\name{lpb4}
\alias{lpb4}
\title{Lindsay-Pilla-Basak method}
\usage{
lpb4(coeff, x)
}
\arguments{
\item{coeff}{The coefficient vector. All values must be greater than 0.}

\item{x}{The vector of quantile values. All values must be greater than 0.}
}
\description{
Computes the cdf of a positively-weighted sum of chi-squared random variables with the Lindsay-Pilla-Basak (LPB4) method using four support points. Note that the coefficient vector must be of length at least four.
}
\details{
Note that the coefficient vector must of length at least four. In some cases when the coefficient vector was of length two or three, the algorithm would be unable to find roots of a particular equation during an intermediate step, and so the algorithm would produce \code{NaN}s. If the coefficient vector is of length less than four, the Hall-Buckley-Eagleson method is used (and a warning is displayed).
}
\examples{
#Examples taken from Table 18.6 in N. L. Johnson, S. Kotz, N. Balakrishnan.
#Continuous Univariate Distributions, Volume 1, John Wiley & Sons, 1994.

lpb4(c(1.5, 1.5, 0.5, 0.5), 10.203)            # should give value close to 0.95
lpb4(coeff=c(1.5, 1.5, 0.5, 0.5), x=10.203)    # specifying parameters
lpb4(c(1.5, 1.5, 0.5, 0.5), c(0.627, 10.203))  # x is a vector, output approx 0.05, 0.95
lpb4(c(0.5, 0.3, 0.2), 2.708)                  # length(coeff) < 4, warning, uses hbe()
}
\references{
\itemize{
 \item B. G. Lindsay, R. S. Pilla, and P. Basak. Moment-based approximations of distributions using mixtures: Theory and applications. \emph{Annals of the Institute of Statistical Mathematics}, 52(2):215-230, 2000.
}
}
\keyword{distribution}

