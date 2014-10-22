\name{qqplotGG}
\alias{qqplotGG}
\title{Quick plot qqplot using ggplot2 style.}
\usage{
	qqplotGG(y = NULL, distribution = qnorm) 
}
\argument{
	\item{y}{A vector which you want to draw.}
	\item{distribution}{A distribution the data based.}
}
\description{
	A function to draw qqplot using \code{\link[ggplot2]{ggplot2}} style quickly.
}

\details{
	The function is to draw qqplot with ggplot2 style, and an accepted theme have already been used in this function.
	Default theme including: points color are "lightblue4", line color is "magenta2", and size of line is 1.Texts of x-axis and y-axis have been set as "Theoretical Quantiles", "Sample Quantiles".
	The distrubition of x can be set as \code{\link[stats:qnorm]{qnorm}}, \code{\link[stats:qbinom]{qbinom}}, \code{\link[stats:qnbinom]{qnbinom}}, \code{\link[stats:qhyper]{qhyper}}, \code{\link[stats:qpois]{qpois}} etc.
}

\seealso{ \code{link[ggplot2:geom_quantile]{geom_quantile}}}

\examples{
\dontrun{
	library(ggExtra)
	qqplotGG(mtcars$wt)

}
}
