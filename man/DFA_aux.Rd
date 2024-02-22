\name{DFA_aux}
\alias{DFA_aux}
\title{
Detrended Fluctuation Analysis Auxiliary function
}
\description{
Function, which is used as an auxiliary function with DFA, to store data between each iteration and thus decrease the computation time speed to compute the alpha coefficient.
}
\usage{
DFA_aux(j, box_size, ninbox2, file, y_k, m, N)
}

\arguments{
  \item{j}{J-th iteration}
  \item{box_size}{Vector of box sizes (must be used in conjunction with \code{scale = "F"})}
  \item{ninbox2}{The number of windows}
\item{file}{Univariate time series (must be a vector or data frame)}
\item{y_k}{Vector with the fit's output stored.}
\item{m}{An integer of the polynomial order for the detrending (by default \code{m=1}).}
\item{N}{The time series size}
}

\details{
The DFA fluctuation can be computed in a geometric scale or for different choices of boxes sizes.
}
\value{
\item{boxe}{Size \eqn{n} of the overlapping boxes. }
\item{DFA}{Detrended Fluctuation function.}
}
\note{
The time series \code{file} and \code{file2} must have the same sample size.
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
#There is not directy usage of this function, 
# because it must be used in parallel with the DFA function.
}


