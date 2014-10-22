stat_funEasy = function(func, color = "black", size = 0.5, ...){
  st <<- unlist(strsplit(func,"="))[2] ##Extra the function body.
  st <<- paste("function(x){" , st, "}",
               sep = "") 
  return(stat_function(fun = eval(parse(text=st)), 
                       colour = color, size = size, ...))
}