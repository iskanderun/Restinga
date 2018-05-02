###
## restinga plotting
## using multiplot (?)


###################

###########
## Clean up

layout(matrix(1:1, ncol=1))
rm(list=ls(all=TRUE))
###########


#############
# MULTIPLOT FUNCTION LOCAL COPY
#############
multiplot <- function(..., plotlist = NULL, file, cols = 1, layout = NULL) {
  require(grid)
  
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  if (is.null(layout)) {
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots == 1) {
    print(plots[[1]])
    
  } else {
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    for (i in 1:numPlots) {
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}
######
    
#require(ggplot2)   
#library(ggplot2)


#multiplot(flo.plot1, flo.plot1, flo.plot1, cols = 3)
