\name{DCCA}
\alias{DCCA}
\title{
DCCA
}
\description{
Applies the Detrended Cross-Correlation Analysis (DCCA) to time series.
}
\usage{
DCCA(file,file2,m=1)
}

\arguments{
  \item{file}{
Univariate time series (must be a vector)}
  \item{file2}{
Univariate time series (must be a vector)}


\item{m}{
An integer of the polynomial order for the detrending (by default m=1).}
}

\details{
The DCCA is computed in a geometric scale.
}
\value{
\item{box_size}{Size of the windows computed in a geometric scale. }
\item{Log_n}{decimal logarithmic of the box size.}
\item{DFA1}{decimal logarithmic fluctuation function of the first time series.}
\item{DFA2}{decimal logarithmic fluctuation function of the second time series.}
\item{DCCA}{Detrended Cross-Correlation function.}

}
\author{
Victor Barreto Mesquita
}

\references{
N. Xu, P. Shang, S. Kamae
Modeling traffic flow correlation using DFA and DCCA
Nonlinear Dynam., 61 (2010), pp. 207-216

B. Podobnik, D. Horvatic, A. Petersen, H.E. Stanley
Cross-correlations between volume change and price change
PNAS, 106 (52) (2009), pp. 22079-22084

R. Ursilean, A.-M. Lazar
Detrended cross-correlation analysis of biometric signals used in a new authentication method
Electr. Electron. Eng., 1 (2009), pp. 55-58

}
\examples{
\donttest{
library(DFA)
data("data1")
data("data2")
file = data1
file2= data2

DCCA(file,file2,m=1)
}
\donttest{
# Example with different polynomial order.

library(DFA)
data("data3")
data("data4")
file = data3
file2= data4

DCCA(file,file2,m=2)
}
}
