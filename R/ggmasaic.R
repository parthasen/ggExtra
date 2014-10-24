ggmasaic <-function (data = NULL,x = NULL, y = NULL, size = 2,
                     ygroup = NULL, colortype = "group", ...) {
  attach(data)
  group_length <- length(unique(ygroup))
  xmax <- cumsum(tapply(y, x, sum))
  xmin <- c(0, xmax[1:length(xmax)-1])
  xmax <- rep(xmax, each = group_length)
  xmin <- rep(xmin, each = group_length)
  ymax <- c()
  ymin <- c()
  for (i in unique(x[order(x)])){
    yall <- y[which(x == i)] ##ith of x all the variable
    yall[order(ygroup[which(x == i)])] ## in the order of group
    ymaxin <- cumsum(yall) / sum(yall)
    yminin <- c(0, ymaxin[1:length(ymaxin) - 1])
    ymax <- c(ymax, ymaxin)
    ymin <- c(ymin, yminin)
    
  }
  x1 <- (xmin + xmax) / 2
  y1 <- (ymin + ymax) /2
  if (colortype == "group") {
    color1 <- rep(unique(ygroup[order(ygroup)]), length(unique(x)))
  }else{
    color1 <- paste(rep(unique(ygroup[order(ygroup)]), 
                        length(unique(x))),
                    rep(unique(x[order(x)]),
                        each = group_length),
                    sep = "-")
  }
  color2 <- paste(rep(unique(x[order(x)]),
                      each = group_length),
                  rep(unique(ygroup[order(ygroup)]), 
                      length(unique(x))),
                  sep = "_")
  data1 <- data.frame(x1, y1,xmax, ymax, xmin, ymin, color1,color2)
  p <- ggplot() + geom_rect(data = data1,aes(x=x1, y = y1, xmax = xmax ,xmin= xmin, ymin = ymin, ymax = ymax, fill = color1),
                            color="white", size=2) +
    geom_text(data =data1,aes(x = x1, y = y1, label = color2 ),color ="white") +
    theme(
      panel.grid.major =element_line(colour="white"),
      panel.grid.minor =element_line(colour="white",linetype="dashed",size=0.2),
      panel.background =element_rect(fill="white"),
      panel.border =element_rect(colour="white",fill=NA,size=2),
      line = element_blank(),
      text = element_blank(),
      line = element_blank(),
      title = element_blank())+
    guides(fill = FALSE)
  return(p)
}