
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

NonOverFun<-function(w=5,x=NULL,year=NULL,fun=mean){
  # GENERATE NON OVERLAPPING SERIES OF VARIABLE x
  #  -- inputs:
  #     w= window length
  #     x= variable eg df$name
  #     df=data frame
  rng<-unique(year)
  sq<-seq(1,length(rng),by=w)
  tmp<-matrix(data=NA,nrow=length(rng),ncol=1)

  for (cnt in sq){tmp[min(cnt+w-1,length(tmp))]<-fun(x[cnt:(cnt+w-1)])}
  return(tmp)
}
# library(testthat)
# library(mypackage)
# test_package("mypackage")
