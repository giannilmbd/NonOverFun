# NonOverFun
Applies a function to non-overlapping windows

Example:
\# create data frame

tst<-as.data.frame(rnorm(n=20))

\# add time variable

tst$year<-seq(as.Date('1901-01-01'),as.Date('1920-01-01'),by='year')

\# change names

names(tst)<-c('variable','year')

\# Execute function with w=window width; x=vector of variable to be transformed; year=time vector, fun=function

NonOverFun(w=5,x=tst$variable,year=tst$year,fun=mean)

\# use this function in a data frame df with "Country" id a variable called "variable" (with dplyr)

library(dplyr)

df<-df%<% group_by(Country) $<$ \
  mutate(mea_w=NonOverFun(w=5,x=df%variable,year=df%year,fun=mean))

