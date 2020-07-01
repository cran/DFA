\name{rhoDCCA}
\alias{rhoDCCA}
\title{
rhoDCCA
}
\description{
Applies the Detrended Cross-Correlation Coefficient (rhoDCCA) to time series.
}
\usage{
rhoDCCA(file,file2,m=1)
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
The rhoDCCA is computed in a geometric scale.
}
\value{
\item{box_size}{Size of the windows computed in a geometric scale. }
\item{Log_n}{decimal logarithmic of the box size.}
\item{DFA1}{decimal logarithmic fluctuation function of the first time series.}
\item{DFA2}{decimal logarithmic fluctuation function of the second time series.}
\item{DCCA}{Detrended Cross-Correlation function.}
\item{rhoDCCA}{Detrended Cross-Correlation Coefficient function.}
}
\note{
The time series file and file2 must have the same sample size.
}
\author{
Victor Barreto Mesquita
}
\references{

Zebende G.F.
DCCA cross-correlation coefficient: Quantifying level of cross-correlation
Physica A, 390 (4) (2011), pp. 614-618

Vassoler R.T., Zebende G.F.
DCCA cross-correlation coefficient apply in time series of air temperature and air relative humidity
Physica A, 391 (7) (2012), pp. 2438-2443

Guedes E.F., Zebende G.F., da Cunha Lima I.C.
Quantificacao dos Efeitos do Cambio na Producao da Industria de Transformacao Baiana: uma abordagem via coeficiente de correlacao cruzada rho dcca
Conjuntura & Planejamento, 1 (192) (2017), pp. 75-89

}
\examples{
\donttest{
library(DFA)
data("data1")
data("data2")
file = data1
file2= data2

rhoDCCA(file,file2,m=1)
}
\donttest{
# Example with different polynomial order.

library(DFA)
data("data3")
data("data4")
file = data3
file2= data4

rhoDCCA(file,file2,m=2)

}
}

