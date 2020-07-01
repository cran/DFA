\name{euclidean}
\alias{euclidean}
\title{
euclidean
}
\description{
Applies the euclidean method for detection of crossover points to time series.
}
\usage{
euclidean(x,y,npoint)
}
\arguments{
  \item{x}{x-axis time series (must be a vector).}
  \item{y}{y-axis time series (must be a vector).}
  \item{npoint}{Number of crossover points.}

}
\value{

\item{position}{Position of the crossover point.}

}
\author{
Victor Barreto Mesquita
}

\references{
https://en.wikipedia.org/wiki/Distance_from_a_point_to_a_line
}

\examples{
library(DFA)
data("data5")
data("data6")
x<-log10(data6)
y<-log10(data5)
npoint=2

euclidean(x,y,npoint)

#Example with different number of crossover
#points and other dataset.
library(DFA)
part1 <- seq(1,20)
part2 <- seq(20,1)
y = c(part1,part2)
x<-seq(1,40)
plot(x,y)
euclidean(x,y,npoint=1)

}
