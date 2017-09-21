\name{NonOverFun}
\alias{NonOverFun}
\title{Function Over Non Overlapping Windows}
\description{
 GENERATE NON OVERLAPPING SERIES OF VARIABLE x
  -- inputs:
      w= window length
      x= variable eg df$name
      year=dates vector eg df$year
}
\examples{
tst<-as.data.frame(rnorm(n=20))
tst$year<-seq(as.Date('1901-01-01'),as.Date('1920-01-01'),by='year')
names(tst)<-c('variable','year')
NonOverFun(w=5,x=tst$variable,year=tst$year,fun=mean)
}

