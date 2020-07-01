\name{DeltaDFA}
\alias{DeltaDFA}
\title{
DeltaDFA
}
\description{
Applies the log-amplitude Detrended Fluctuation Analysis (DFA) to time series.
}
\usage{
DeltaDFA(file,file2,m=1)
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
The DFA log-amplitude fluctuation is computed in a geometric scale.
}
\value{
\item{box_size}{Size of the windows computed in a geometric scale. }
\item{Log_n}{decimal logarithmic of the box size.}
\item{DeltaDFA}{log-amplitude Fluctuation function.}

}
\note{
The time series file and file2 must have the same sample size.
}

\author{
Victor Barreto Mesquita
}

\references{
 G.  F.  Zebende,  F.  M.  Oliveira  Filho,  J.  A.  L.  Cruz,  Auto-correlationin  the  motor/imaginary  human  eeg  signals:   A  vision  about  the  fdfafluctuations, PloS one 12 (9) (2017).

  F. Oliveira Filho, J. L. Cruz, G. Zebende, Analysis of the eeg bio-signalsduring the reading task by dfa method, Physica A: Statistical Mechanicsand its Applications 525 (2019) 664-671.

S. R. Hirekhan, R. R. Manthalkar, The detrended fluctuation and cross-correlation  analysis  of  eeg  signals,  International  Journal  of  IntelligentSystems Design and Computing 2 (2) (2018) .

}
\examples{
\donttest{
library(DFA)
data("data1")
data("data2")
file = data1
file2= data2

DeltaDFA(file,file2,m=1)
}
\donttest{
# Example with different polynomial order.

library(DFA)
data("data3")
data("data4")
file = data3
file2= data4

DeltaDFA(file,file2,m=2)

}
}
