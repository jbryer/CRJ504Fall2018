# R notes from October 1, 2018 class

library(DATA606)
shiny_demo('gambler')

shiny_demo('lottery')

tickets <- as.data.frame(rbind(
	c(    '$1',    1,     15),
	c(    '$2',    2,     11),
	c(    '$4',    4,     62),
	c(    '$5',    5,    100),
	c(   '$10',   10,    143),
	c(   '$20',   20,    250),
	c(   '$30',   30,    562),
	c(   '$50',   50,   3482),
	c(  '$100',  100,   6681),
	c(  '$500',  500,  49440),
	c('$1500',  1500, 375214),
	c('$2500',  2500, 618000)
), stringsAsFactors=FALSE)
names(tickets) <- c('Winnings', 'Value', 'Odds')
tickets$Value <- as.integer(tickets$Value)
tickets$Odds <- as.integer(tickets$Odds)


# WTF + sign
# Type "2 +" in the console
# This is an incomplete R command
data(mtcars)
hist(mtcars$mpg)

# Starting lab 1
# 1. Browse to the directory where you want the lab in the Files tab
# 2. Click More -> Set As Working Directory
# 3. Load package
library(DATA606)
# 4. Start lab
startLab('Lab1')
# 5. Click the Lab1 folder in the files tab
# 6. Click More -> Set As Working Directory
# 7. Work on the lab (you can always click the Rmd file to open if
#    it didn't automatically)
