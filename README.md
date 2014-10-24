# ggExtra Package

`ggExtra` is a package extending [ggplot2](http://ggplot2.org/) R package to some exciting functions and features.

##To install

* the latest development version: `install_github("threecifanggen/ggExtra")` (Use install_github fuction in `devtools` package.)
* the latest realest version: **haven't update now.**

##Functions
Functions including (functions in bold font have already uploaded.)

* **ggarrange**: arrange more than one ggplot2 objects into one bigger figure.
* **qqplotGG**: qqplotting using ggplot2 style.
* ggheatmap: heatmap plotting using ggplot2 style. **(haven't been uploaded.)**
* ggheatmap_cluster: heatmap plotting with clustering tree using ggplot2 style. **(Still developing)**
* geom_pie: pie plotting using ggplot2 style. **(haven't been uploaded)**
* **stat_funEasy**: a more easy way to add a function plot. **(more features will be added)**
* **ggmasaic**: masaic plotting using ggplot2 style. 

##Examples

**ggarrange**  

![ggarrange](https://raw.githubusercontent.com/threecifanggen/ggExtra/master/image/ggarrange.png)

You can change the possitions and relative size of sub-figures by this fuction.

	# Some pictures you want to draw together
	p <- ggplot(mtcars, aes(wt, mpg)) + geom_point(aes(shape = factor(cyl))) + scale_shape(solid = FALSE)
	m <- ggplot(movies, aes(y=votes, x=year)) + stat_summary(geom="ribbon", fun.ymin="min", fun.ymax="max")
	set.seed(6298)
	diamonds_small <- diamonds[sample(nrow(diamonds), 1000), ]
	ggplot(diamonds_small, aes(x=price)) + geom_bar()
	hist_cut <- ggplot(diamonds_small, aes(x=price, fill=cut)) + geom_bar(position="dodge")

	pp <- list(p, m, hist_cut)

	# Use default setting and draw with matrix [1, 1; 2, 3]
	ggarrange(pp, matrix(c(1,2,1,3), nrow = 2))

	# Change the balance of rows to 1 : 2
	ggarrange(pp, matrix(c(1,2,1,3), nrow = 2), widrow = c(1/3, 2/3))


**ggmasaic** 

![ggmasaic](https://raw.githubusercontent.com/threecifanggen/ggExtra/master/image/ggmasaic.png)

Masaic plot is a useful sort of figures in many field of researches and works. And ggmasaic function makes it easy for you to use it in ggplot2 style.

	a <- runif(15, min = 2, max = 20)
	b <- rep(c("a", "b", "c", "d", "e"), each = 3)
	c <- rep(c("x", "y", "z"), 5)
	da <- data.frame(a, b, c)
	da
	ggmasaic(data = da, x = b, y = a, ygroup = c)

**stat_funEasy** 

![stat_funEasy](https://raw.githubusercontent.com/threecifanggen/ggExtra/master/image/stat_funEasy.png)

It is a function that haven't developed well enough but still have some interesting applications. 

	qqplotGG(mtcars$wt) + stat_funEasy("y = x ^ 2 - 1",color = "red", linetype = "dotdash")

**qqplotGG** 

![qqplotGG](https://raw.githubusercontent.com/threecifanggen/ggExtra/master/image/qqplotGG.png)

A ggplot2 style Q-Q Plot.

	qqplotGG(mtcars$wt)

##SeeAlso

Find more example about ggplot2 at [ggplot2.org](http://ggplot2.org). If you want to help improve, visit `https://github.com/threecifanggen/ggExtra` or email to `huangbaochenwo@live.com`.

