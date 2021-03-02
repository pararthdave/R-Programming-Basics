
dt<-iris        # Load the iris data
nm<-names(dt)   # name of the variables

# (Question) How many variables (i.e number of columns) are there in the iris data?
# (Question) What are the names of variables in the iris data?
# (Question) What is the class (data type) of the data in "Species" variable?

# (Explore) Learn about apply(), lapply(), sapply(), taplly()
sapply(dt, class)
# (Question) What is the output of above sysntax?


# Below sysntax changes the "Species" variable class to character.
dt$Species<-as.character(dt$Species) 
# (Question) What is the class of "Species" variable before running above syntax?
# (Task) Change class of "Species" variable to 'factor' by using as.factor() function.


#  Below syntax creates new variable called "Sepal.Length2" which contains values of 'Sepal.Length' devide by 100.
dt$Sepal.Length2<-dt$Sepal.Length/100 
# (Task) Create new variable called "Petal.lengthwidth" which contains the sum of "Petal.length" and "Petal.width".
# (Question) How many variables are there in the dataframe dt?

# Below syntax replaces Sepal.Length greater than 0.06 by NA
dt$Sepal.Length2[dt$Sepal.Length>6.0]<- NA 
# (Question) How many NA values in the 'Sepal.Length2' variable?
# (Task) Replace NA with mean of "Sepal.Length2" using impute function.

# Below syntax computes average (mean) of firt three variables of dt, columns wise, and generates 
# new variable called "Mean.feature" in the dataframe dt.
dt$Mean.feature<-apply(dt[1:4], 1, mean) 
# (Task) Add "Median.feature" variable to dataframe dt. The added variable contains 
# median of first two variables of dataframe dt columnwise.

# Below syntax classify Sepal.Width in three categories "Short", "Medium" and "Tall". 
# 1.9<"Short"<2.5, 2.5<"Medium"<2.8 and 2.8< "Tall" <5.0 
dt$Sepal.Width2<-cut(dt$Sepal.Width, c(1.9, 2.5, 2.8, 5.0), c("Short", "Medium", "Tall"))
# (Question) What happens when you replace 1.9 with 2.0? is there any NA value in "Sepal.Width2" variable?
# (Question) What is the class of the "Sepal.Width2" Variable?  
# (Question) What are the levels the "Sepal.Width2" variable?
# (Task) Replace level "Short" by "Extra sort".
# (Question) does it changes name in variable "dt$Sepal.Width2"?

# Below syntax returns all the observations of "sentosa".
dtsentosa<-subset(dt, Species=="setosa")
# (Question) What is the mean and median of 'Petal.Width' of the 'versicolor' specices?


