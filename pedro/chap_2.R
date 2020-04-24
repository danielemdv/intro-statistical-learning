#Taken from book
Elite=rep("No",nrow(college))
Elite[college$Top10perc >50]="Yes"
Elite=as.factor(Elite)
college=data.frame(college ,Elite)

summary(college)

plot(college$Elite, college$Outstate)

#I wanted to test if Elite universities have a lower acceptance rate.
accept_rate = (Accept / Apps) * 100
plot(college$Elite, accept_rate)

#This changes the number of graphs shown per page
par(mfrow=c(2,2))


Auto = ISLR::Auto
#This functn plots each column against each other column
pairs(Auto)

plot(mpg, cylinders)
plot(mpg, displacement)
plot(mpg, horsepower)
plot(mpg, weight)


library(MASS)
?Boston
pairs(Boston)
summary(Boston)

attach(Boston)

vars_crime = list(age, dis, rad, tax, medv)
for (i in vars_crime) {
  plot(i, crim)
}

#How many properties are on river
river = rep('No', nrow(Boston))
river[chas == 1] = 'Yes'
a=0
for (i in river){
  if (i == 'Yes'){
    a = a+1
  }
}
n_on_river = a

#Which property has lowest medv. Careful, there can always be more than 1 minimum if they are the same.
#Thus the function adds values to a vector and doesn't stop as soon as it finds it.
a = 0
mins = vector()
for (i in medv) {
  a = a+1
  if(i==min(medv)){
    mins = c(mins, a)
  }
  
}

#More than 8 rooms per dwelling
rooms_m8 = rep(FALSE, nrow(Boston))
rooms_m8[rm>=8] = TRUE
sum(rooms_m8)
big_house_towns = Boston[rooms_m8,]
summary(big_house_towns)

