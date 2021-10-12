library(readxl)
Data<-read_excel("Hwk4Q2DatSp19.xlsx") #reads in data
CreatClear<-Data$CreatClear #labels variables
Conc<-Data$Conc
Age<-Data$Age
Weight<-Data$Weight

predictor.lm<-lm(CreatClear~Conc+Age+Weight,data=Data) #fits model to data
summary(predictor.lm) #shows model summary

#Checks assumptions for linear regression
plot(predictor.lm$fitted.values,rstandard(predictor.lm),main="Fitted vs. Residuals") #Checks homoskedasticity
abline(h=0)
library(car)
qqnorm(predictor.lm$residuals) #Checks normalcy
qqline(predictor.lm$residuals)
qqPlot(predictor.lm$residuals, main="QQPlot")
plot(predictor.lm,which=4) #Check influence of outliers.
ing
# CH comments: Looks good! Comments are used effectively, variable names make
# sense, code is easy to understand. I don't have the data needed to run this,
# but looks like it should work. Small nitpick: I find it easier to read code
# with more spaces incorporated, e.g. "Age <- Data$Age". I see lots of people
# go without spaces, but I prefer the look of it better with spaces in there.
# Another thing I've found helpful is add a header to
# script files. I started doing this recently myself and have found it helps
# when going back to old code (or reading someone else's...)
# I like to include name, the date, the version of the script, what the 
# script does, and any  input and/or output files.

