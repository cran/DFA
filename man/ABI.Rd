\name{ABI}
\alias{ABI}
\title{Activity balance index (ABI)}
\usage{
ABI(x)
}
\arguments{
\item{x}{the estimated self-similarity parameter (SSP)}
}
\value{
The estimated Activity balance index (ABI) is a real number between zero and one.
}
\description{
This function estimates the Activity balance index (ABI), which is a transformation of the self-similarity parameter (SSP), also known as scaling exponent or alpha.
}
\details{
ABI = exp(-abs(SSP-1)/exp(-2))
}
\examples{
# Estimate Activity balance index of a very known time series available on R base: the sunspot.year.

library(DFA)
alpha = SSP(sunspot.year, scale = 1.2)
abi = ABI(alpha)

}
\references{
Danilevicz, I.M., van Hees, V.T., van der Heide, F., Jacob, L., Landré, B., Benadjaoud, M.A., Sabia, S. (2023). Measures of fragmentation of rest activity patterns: mathematical properties and interpretability based on accelerometer real life data. Research square. 10.21203/rs.3.rs-3543711/v1.
}
\author{
Ian Meneghel Danilevicz
}

