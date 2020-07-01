\name{AUC}
\alias{AUC}
\title{
AUC}
\description{
Applies the Area Under the Curve to time series.

}
\usage{
AUC(x,data)
}
\arguments{
  \item{x}{
x-axis time series (must be a vector)}
  \item{data}{A data.frame of time series}

}
\details{
Compute the Area Under the Curve to a data.frame.
}
\value{

\item{position}{Position of the DFA curve with higher Area Under the Curve.}
\item{Area}{Area Under the Curve by trapezoidal rule.}

}
\note{
All of time series contained in the data.frame must have the same sample size.
}

\author{
Victor Barreto Mesquita
}

\references{
https://www.khanacademy.org/math/ap-calculus-ab/ab-integration-new/ab-6-2/a/understanding-the-trapezoid-rule

https://en.wikipedia.org/wiki/Trapezoidal_rule
}

\examples{
library(DFA)

eq = function(x){x^{2}}
eq2 = function(x){x^{2}-300}
eq3 = function(x){x^{2}+300}

x <- seq(1,100,1)
data <- data.frame(eq(1:100),eq2(1:100),eq3(1:100))

AUC(x,data)

\donttest{

# Example with polynomials with different slopes.
library(DFA)
curve = function(x){-x^{2}}
curve2 = function(x){-x^{2}+2*x - 400}
curve3 = function(x){-x^{2}-4*x-800}

x <- seq(1,80,1)
data <- data.frame(curve(1:80),curve2(1:80),curve3(1:80))

AUC(x,data)
}

}
