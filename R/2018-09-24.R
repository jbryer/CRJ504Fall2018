# Notes from 2018-09-24 class

# install.packages(c('tidyverse', 'devtools', 'openintro', 'fivethirtyeight',
# 				   'likert', 'OIdata', 'psych', 'shiny', 'knitr', 'markdown'))
# devtools::install_github('jbryer/DATA606')

library(DATA606)
shiny_demo('DualScales', package='DATA606')


library(ggplot2)
data("diamonds")
View(diamonds)

data("mtcars")
head(mtcars)
tail(mtcars)
View(mtcars)
str(mtcars)
?mtcars

table(mtcars$cyl)
prop.table(table(mtcars$cyl)) * 100

mtcars$mpg
mean(mtcars$mpg)
sd(mtcars$mpg)

ggplot(mtcars, aes(x = mpg)) + geom_histogram()
ggplot(mtcars, aes(x = mpg)) + geom_histogram(bins = 10)
ggplot(mtcars, aes(x = mpg)) + geom_histogram(bins = 15)

str(mtcars) # We see that cyl is a numeric type, but we wanted to be qualitative (i.e. a factor)
mtcars$cyl <- as.factor(mtcars$cyl)
str(mtcars) # cyl is now a factor!

ggplot(mtcars, aes(x = cyl, y = mpg)) + geom_point()
ggplot(mtcars, aes(x = cyl, y = mpg)) + geom_boxplot()

a <- 42
a
a * 2

f <- function(x) { 2 * x + 15 }
f(2)
f(3)

library(DATA606)
getLabs()

list.files()
list.files(path = '~') # If on a mac
list.files(path = 'c:/') # If on Windows

getwd()

startLab('Lab0')
