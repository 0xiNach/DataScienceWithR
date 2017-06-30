#Question1:

   P = 5000
   R = 11.5
   n = 1:15
   
   A = P * (1 + R/100)**n

#Question2: 
   
   Heights = c(180, 165, 160, 193) / 100
   Weights = c(87, 58, 65, 100)
   
   BMI = Weights/Heights
   
#Question3:  
   
   data("cars")  #importing the built-in data
   head(cars,5) #Print the first 5 lines from cars
   state = sample(c('NY','CT','CA', size = 50, replace = TRUE)) #Randomly generate a vector of 'CT','NY','CA'.
   cars = cbind(cars,state) #Adding the newly generated column
   colnames(cars)[3] = 'state' #Renaming newly added column
   ratio = cars$dist/cars$speed  # ratio of distance/speed
   cars = cbind(cars,round(ratio,2)) #formatting decimal
   mean(cars$ratio)  #mean of ratio
   sd(cars$ratio)   #standard deviation of ratio

   
#question4:
   
   dim(TimesSquareSignage) #dimension of data-frame, first value is row and second is column
   str(TimesSquareSignage)  #str will show type of each variable
   sum(is.na(TimesSquareSignage)) #total missing value in the darasets
   sort(unique(which(is.na(TimesSquareSignage),arr.ind = TRUE)[,1])) #which row has atleast one missing value
   sort(unique(which(is.na(TimesSquareSignage),arr.ind = TRUE)[,2])) #which column has atleast one missing value
   
#Question5:
   
   TimesSquareSignage[TimesSquareSignage$Location=='Upper Bway',] #Observations from Upper Broadway 
   TimesSquareSignage[TimesSquareSignage$`TOTAL SF` > mean(TimesSquareSignage$`TOTAL SF`),] #Observations with greater-than-average square footage
   df = TimesSquareSignage[ ,c(1,2,3,17)] #The name, address ,location and total SF column extraction
   head(df[order(df$`TOTAL SF`,decreasing = TRUE),],10) #ordering extracted dataframe in terms of total SF