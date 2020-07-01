\name{Deltarho}
\alias{Deltarho}
\title{
Deltarho
}
\description{
Applies the Detrended Cross-Correlation Coefficient Difference (Deltarho) to time series.
}
\usage{
Deltarho(file,file2,file3,file4,m=1)
}

\arguments{
  \item{file}{
Univariate time series (must be a vector)}
  \item{file2}{
Univariate time series (must be a vector)}
  \item{file3}{
Univariate time series (must be a vector)}
  \item{file4}{
Univariate time series (must be a vector)}
\item{m}{
An integer of the polynomial order for the detrending (by default m=1).}
}

\details{
The Deltarho is computed in a geometric scale.
}
\value{
\item{box_size}{Size of the windows computed in a geometric scale. }
\item{Log_n}{decimal logarithmic of the box size.}
\item{DFA1}{decimal logarithmic fluctuation function of the first time series.}
\item{DFA2}{decimal logarithmic fluctuation function of the second time series.}
\item{DFA3}{decimal logarithmic fluctuation function of the third time series.}
\item{DFA4}{decimal logarithmic fluctuation function of the fourth time series.}
\item{DCCA1}{Detrended Cross-Correlation function between the first and the second time series.}
\item{DCCA2}{Detrended Cross-Correlation function between the third and the fourth time series.}
\item{rhoDCCA1}{Detrended Cross-Correlation Coefficient function between the first and the second time series.}
\item{rhoDCCA2}{Detrended Cross-Correlation Coefficient function between the third and the fourth time series.}
}
\note{
The time series file,file2,file3 and file4 must have the same sample size.
}
\author{
Victor Barreto Mesquita
}

\references{

SILVA, Marcus Fernandes da et al. Quantifying cross-correlation between ibovespa
and brazilian blue-chips: The dcca approach. Physica A: Statistical Mechanics and its
Applications, v. 424,2015.
}
\examples{
\donttest{
library(DFA)
data("data1")
data("data2")
data("data3")
data("data4")
file = data1
file2= data2
file3= data3
file4= data4

Deltarho(file,file2,file3,file4,m=1)
}
\donttest{
# Example with different polynomial order.

library(DFA)
file = rnorm(100)
file2= rnorm(100)
file3= rnorm(100)
file4= rnorm(100)

Deltarho(file,file2,file3,file4,m=4)

}

}
