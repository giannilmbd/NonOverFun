
# test file for NonOverFun ------------------------------------------------


tst<-as.data.frame(rnorm(n=20))
tst$year<-seq(as.Date('1901-01-01'),as.Date('1920-01-01'),by='year')
names(tst)<-c('variable','year')
NonOverFun(w=5,x=tst$variable,year=tst$year,fun=mean)
