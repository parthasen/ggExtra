\name{ggmasaic}
\alias{ggmasaic}
\title{Masaic plot using ggplot2 style.}
\usage{
	ggmasaic <-function (data = NULL,x = NULL, y = NULL, ygroup = NULL, size = 2, colortype = "group", ...)
}
\arguments{
	\item{x}{The x-axis factor.}
	\item{ygroup}{The y-axis factor.}
	\item{y}{Every value of every rectangle.}
	\item{colortype}{The way you want to paint the color in different rectangles: "group" or "xgroup"}
}
\description{
	A function to draw masaic plot ussing \code{\link[ggplot2]{ggplot2}} style. 
}

\details{
	Three columns must you have in your data.frame. x means the factor vector what you want to draw in x-axis; ygroup means what the group/factor in each x-factor; y means value of each x-y-factor. Warning: some flaws haven't been tackles. Each x-factor must have the same sorts of group-factor. If some x-factor doesn't have a particular y-factor, please use 0 to replace it.

	Colortype is an option, if you want to paint color in different groups, use "group"; if you want to paint different colors in different rectangles, use "xgroup". 
}
\seealso{}

\examples{
	\dontrun{
	library(ggExtra)
	a <- runif(15, min = 2, max = 20)
	b <- rep(c("a", "b", "c", "d", "e"), each = 3)
	c <- rep(c("x", "y", "z"), 5)
	da <- data.frame(a, b, c)
	da
	ggmasaic(data = da, x = b, y = a, ygroup = c)

	##using different color in different rectangles
	ggmasaic(data = da, x = b, y = a, ygroup = c, 
		colortype = "xgroup")
	}
}