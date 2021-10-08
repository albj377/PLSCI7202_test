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

# CH comments: Looks good! Only suggestion I have is  to add a header to your
# script files. I started doing this recently myself and have found it helps
# when going back to old code (or reading someone else's...)
# I like to include name, the date, the version of the script, what the 
# script does, and any  input and/or output files.

