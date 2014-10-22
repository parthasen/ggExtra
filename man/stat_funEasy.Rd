\name{stat_funEasy}
\alias{stat_funEasy}
\title{More easy way to plot funtion using ggplot2 style.}
\usage{
	stat_funEasy(func, color = "black", size = 0.5, ...) 
}
\argument{
	\item{func}{A string formula you want to plot, please use "x" and "y" as variables.}

}
\description{
	A function to draw function using \code{\link[ggplot2]{ggplot2}} style easily than \code{\link[ggplot2:stat_function]{stat_function}}.
}

\details{
	The most important is this function is to add layer to a ggplot2 environment. Do not use it alone. 

	And you must use only style like "y = *". "x" or "y" are only variable symbol in this function. And more features will be added in the futures, for instance, draw "x ^ 2 + y ^ 2 = 1". Really hope for your waiting!  
}

\seealso{ \code{\link[ggplot2:stat_function]{stat_function}}}

\examples{
\dontrun{
	library(ggExtra)
	qqplotGG(mtcars$wt) + stat_funEasy("y = x ^ 2 - 1", color = "red", linetype = "dotdash")

}
}
