library(readxl)
library(likert)

mass <- as.data.frame(read_excel('Data/MASS.xlsx'))

items <- c('I find math interesting.',
		   'I get uptight during math tests.',
		   'I think that I will use math in the future.',
		   'Mind goes blank and I am unable to think clearly when doing my math test.',
		   'Math relates to my life.',
		   'I worry about my ability to solve math problems.',
		   'I get a sinking feeling when I try to do math problems.',
		   'I find math challenging.',
		   'Mathematics makes me feel nervous.',
		   'I would like to take more math classes.',
		   'Mathematics makes me feel uneasy.',
		   'Math is one of my favorite subjects.',
		   'I enjoy learning with mathematics.',
		   'Mathematics makes me feel confused.')

names(mass)[1] <- 'Gender'
names(mass)[2:15] <- items
for(i in 2:15) {
	mass[,i] <- factor(mass[,i], levels=c('Strongly Disagree',
							'Disagree', 'Neither Agree nor Disagree',
							'Agree', 'Strongly Agree'),
						 ordered=TRUE)
}
str(mass)

likert.out <- likert(mass[,-1])
summary(likert.out)
plot(likert.out)
