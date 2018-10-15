# R Notes from October 15th class
library(DATA606)

shiny_demo('sampdist')
shiny_demo('CLT_mean')

# Starting Lab 4a
startLab('Lab4a')
# Click Lab4a in the File browser
# Then click More -> Set As Working Directory

# Data for the homework
# Download from here: https://github.com/jbryer/DATA606Fall2018/tree/master/data/openintro.org
install.packages(c('openintro')) # Only necessary once to install the package
library(openintro)
data(package='openintro') # Lists all the datasets in this package
# Here is a mapping of problems to dataset: https://github.com/jbryer/DATA606Fall2018/blob/master/data/openintro.org/Ch%204%20Exercise%20Data/000%20-%20CH%204%20GUIDE.txt
# See, for example, problem 4.14 needs ageAtMar. Use the data command to load as follows:
data("ageAtMar") # for problem 4.14

