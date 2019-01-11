#------------------------#
#20190110 R Training EEB#
#------------------------#

53 + 23

1+2

# Parentheses: (, )
# Exponents: ^ or **
# Divide: /
# Multiply: *
# Add: +
# Subtract: -

3 + 5 * 2

(3+5) * 2
log(1)
lg (1)
log10(1)
exp(0.5)
lg(1)

 x <- 1/40
x 

x <- x + 1
y <- x *2

this.is.my.variable.name <- 100
new_variables <- 100
min-lenght <- 1
age <- 1
.mass <-1
cels2ing <-1

mass <- 47.5
age <- 122
mass <- mass*2.3
age <- age-20
mass
age

1:5
2^(1:5)
x < 1:5
x <- 1:5
x*2
2^x

rm(x)

x <- 1:4
y <- 5:8
x + y

ls

ls()

rm("x")
rm(x)
x <- 1:4
rm(x)

rm(list = ls())


installed.packages()

install.packages("package.name")

install.packages("ggplot2")
install.packages("dplyr")
installed.packages("gapminder") # this is not a function

library(ggplot2)
library(dplyr)
library(gapminder)

#finding help
?log
?ggplot
help(log)

#fuzzy search
??read.ta

? "<-"

vignette("ggplot2-specs")

vignette("coin")

vignette("dplyr")

?dput

# general information of R
sessionInfo()

# Date Structures

cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
cats
#save a csv file to the data folder
write.csv(cats, "data/feline_data.csv")

#read a cvs file
cats <- read.csv("data/feline_data.csv")

cats$weight
cats$coat

triage <- read.xl("data/triage1.xls") # failed

cats$weight <- cats$weight*2.2
cats$weight

cats$weight + cats$coat

class(cats$weight)
class(cats$coat)
cats$coat

class(cats)
str(cats)

num_vector <- c (1, 3, 5)
#creat a vector
chr_vector <- c ("a", "b", "c")
chr_vector2 <- c ("d", "e", "f")
#combine vector
comb_verctor <- c (chr_vector, chr_vector2)

comb_verctor

num_vector2 <- c (100, 10, 20)

num_vector + num_vector2

my_series <- 1:10
my_series

seq(10)
seq(from = 1, to = 10, by = 0.1)

my_example <- 5:8
names(my_example) <- c ("a", "b", "c", "d")
my_example
names(my_example)

my_vector <- 1:26
my_vector2 <- my_vector*2
names(my_vector2) <- c (LETTERS)
my_vector2

my1_vector <- seq(26)
a <- my1_vector*2
names(a) <- c (LETTERS)
a

names(a) <- letters
a

# working with a real data frame
gapminder <- read.csv("data/gapminder_data.csv")

#alterantive way to access the data
install.packages("gapminder")
library(gapminder)
data("gapminder")
attach(gapminder)

str(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)# dimensions of the data

colnames(gapminder)

# Subsetting data
x <- c (5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c ("a", "b", "c", "d", "e")
x

x[1]
x[3]
x[c (1, 3)]
x[1:4]

x[6]

#remove element
x[-2]
x[-(2:4)]

head(gapminder)
head(gapminder["pop"])
head(gapminder[,5]) # the fifth column
gapminder[3,] # the third row
gapminder[1:10, 5] # the first 10 subject's pop, first 10 rows and fifth column
gapminder[138,4] # life expectancy on line 138
gapminder[1:6, 3:6] # select fisrt six rows of numberic columns only

gapminder[1:6, c ("pop", "lifeExp", "year", "gdpPercap")]


albania <- gapminder[13:24, 1:6]
albania

Afghanistan <- gapminder[1:12, 1:6]
Afghanistan

Afghanistan$gdp <- Afghanistan$pop * Afghanistan$gdpPercap

#save a csv file to the results folder
write.csv(Afghanistan, "results/Afghanistan.csv")

#======================================#
# School of Bussiness Training 20180111#
#======================================#

library(ggplot2)
head(gapminder)
Triage <- read.csv("data/Triage.csv")
head(Triage)
## find working directory
getwd()
## to change working directory
setwd("./data/")
rm(triage)
triage <- Triage

# try Triage data
ggplot(data = triage, aes(x = gender, y = simulation_design)) +
  geom_point()
ggplot(data = triage, aes(x = age, y = simulation_design)) +
  geom_point()

# gapminder
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

# add color
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color=continent)) +
  geom_point()

# practice
ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_point()

# line
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color=continent)) +
  geom_line()

# add layer
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             by = country, color=continent)) +
  geom_line()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             by = country, color=continent)) +
  geom_line() +
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             by = country)) +
  geom_line(aes(color = continent)) +
  geom_point(aes(color = "blue"))

## back to scatter (no line)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point()


ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(alpha = 0.5) +
  scale_x_log10()

# add regression line
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(alpha = 0.3) +
  scale_x_log10() +
  geom_smooth(method = "lm")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5 )

## Make the scatterplot points smaller
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(alpha = 0.5, size = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5 )


ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(alpha = 0.5, aes(shape = continent)) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5 )

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(alpha = 0.5, aes(shape = continent), show.legend = FALSE) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 1.5 )

## clean up for publication
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_point(size = 2, aes(shape = continent)) +
  scale_x_log10() +
  geom_smooth(method = "lm") +
  scale_y_continuous(limits = c(0,100), breaks = seq(0, 100, by=10)) +
  theme_bw() +
## give title, x and y
  ggtitle("Effects of pre-captia GDP on Life Expectancy")+
  xlab("GDP per Capita ($)") +
  ylab("Life Expectancy (yrs)")
## save
ggsave(file = "life_expectancy.png", width = 20, height = 20, units = "cm")
ggsave(file = "life_expectancy.pdf", width = 20, height = 20, units = "cm")


## boxplot
ggplot(data = gapminder, aes(x = continent, y = lifeExp)) +
  geom_boxplot()+
  geom_jitter(alpha = 0.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, 
                             color = continent)) +
  geom_boxplot()

plot <- ggplot(data = gapminder, aes(x = continent, y = lifeExp)) +
  geom_boxplot()
plot
plot_tomato <- plot + geom_point(alpha = 0.5, color = "tomato")
plot + geom_jitter(alpha = 0.5, color = "tomato")
print(plot)



Triage <- read.csv("data/Triage.csv")

rm(triage, Triage)

Triage <- read.csv("data/Triage.csv")

triage <- read.csv("data/Triage.csv")

#=============================#
#Second section in the morning#
#=============================#

number <- 37
if (number >100) {
  print("greater than 100")
} else {
  print("less than or equal to 100")
}

# Less than <
# Equal to ==
# Not equal to !=

number <- -3

if (number > 0) {
  print(1)
} else if (number < 0) {
  print(-1)
} else {
  print(0)
}

number <- 44
if (number < 45) {
  print("Less than 45")
} else if (number <= 50) {
  print("Between 45 and 50")
} else {
  print("Greater than 50")
}

number1 <- -15
number2 <- 40
if (number1 >= 0 & number2 >= 0){
  print("both numbers are positive")
} else {
  print("at lease one number was negative")
}

#Loops
numbers <- 1:10
numbers
for (number in numbers) {
  print(number)
}

for (i in 1:10){
  print(i)
}
print(i)


letter <- "z"
print(letter)
for (letter in c ("a", "b", "c")) {
  print(letter)
}
print(letter)

numbers <- c(4, 8, 15, 16, 23, 42)
sum <- 0
for (number in numbers) {
  sum <- sum + number
} 
print(sum)

# Functions
nrow()
dim()
read.table

fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32)* (5/9) ) + 273.15
  return(kelvin)
}

# Freezing point
fahr_to_kelvin(32)

# Boiling piont
fahr_to_kelvin(212)

kelvin_to_celsius <- function(temp){
  celsius <- temp - 273.15
  return(celsius)
}

kelvin_to_celsius(0)

# Function to convert fahrenheit to kelvin
fahr_to_kelvin <- function(temp) {
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp)
}

# Function to convert fahrenheit to kelvin
fahr_to_kelvin <- function(temp) {
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp)
}

# Store the current temperature in F
temp <- 73

# Get the temperature in kelvin
kelvin_temp <- fahr_to_kelvin(temp)

# Print the temperature
print(temp)

print(kelvin_temp)

kelvin_temp

#Write a function to convert a temperature in Celsius to Fahrenheit#
# using the formula: F = C * 9 / 5 + 32#
Celsius_to_Fahr <- function(temp){
  Fahr <- (temp* 9 / 5)  + 32
  return(Fahr)
}

Celsius_to_Fahr (0)

# Reshaping and manipulating data with dplyr and tidyr
getwd()

install.packages(c("tidyr", "dplyr", "knitr", "rmarkdown", "formatR"))

library(dplyr)

library(gapminder)

head(gap)

triage <- Triage

str(triage)

colnames(triage)

library(ggplot2)

ggplot(data = triage, aes(x = X...group, y = presum, 
       color=X...group)) +
  geom_point()

ggplot(data = triage, aes(x = X...group, y = presum, 
                          color=X...group)) +
  geom_boxplot()

  