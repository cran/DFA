\name{DFA}
\alias{DFA}
\title{
DFA
}
\description{
Applies the Detrended Fluctuation Analysis (DFA) to time series.
}
\usage{
DFA(file,m=1)
}

\arguments{
  \item{file}{
Univariate time series (must be a vector)}

\item{m}{
An integer of the polynomial order for the detrending (by default m=1).}
}

\details{
The DFA fluctuation is computed in a geometric scale.
}
\value{
\item{box_size}{Size of the windows computed in a geometric scale. }
\item{Log_n}{decimal logarithmic of the box size.}
\item{Log_Fn}{decimal logarithmic of the Fluctuation function.}

}

\author{
Victor Barreto Mesquita
}

\references{
C.-K. Peng, S.V. Buldyrev, S. Havlin, M. Simons, H.E. Stanley, A.L. Goldberger
Phys. Rev. E, 49 (1994), p. 1685

H.E. Stanley, L.A.N. Amaral, A.L. Goldberger, S. Havlin, P.Ch. Ivanov, C.-K. Peng
Physica A, 270 (1999), p. 309

P.C. Ivanov, A. Bunde, L.A.N. Amaral, S. Havlin, J. Fritsch-Yelle, R.M. Baevsky, H.E. Stanley, A.L. Goldberger
Europhys. Lett., 48 (1999), p. 594

P. Talkner, R.O. Weber
Phys. Rev. E, 62 (2000), p. 150

M. Ausloos, K. Ivanova
Physica A, 286 (2000), p. 353

H.E. Hurst, R.P. Black, Y.M. Simaika
Long-Term Storage, An Experimental Study, Constable, London (1965)
}

\examples{
\donttest{
library(DFA)
data("data1")
file = data1
DFA(file,m=1)
}
\donttest{
# Example with different polynomial order.
library(DFA)
data("data2")
file = data2
DFA(file,m=3)
}

}
