# Exercise 5: Vector practice

# Create a vector `words` of 6 (or more) words.
# You can Google for a "random word generator" if you wish!
words <- c("cat","dog","fish","lion","egg","bird")


# Create a new vector `words.of.the.day` that is your `words` vector with the string
# "is the word of the day!" pasted on to the end.
# BONUS: Surround the word in quotes (single or double) (e.g., `"data" is the word of the day!`)
words.of.the.day <- paste0('"' words, '"is the word of the day')
print(words.of.the.day)

# Create a vector `a.f.words` which are the elements in `words` that start with "a" through "f"
# Hint: use a comparison operator to see if the word comes before "f" alphabetically!
# Tip: make sure all the words are lower-case, and only consider the first letter of the word!
atof.words <- substr(words,1,1) < "g"
print(atof.words)
a.f.words <- words[atof.words]
print (a.f.words)
# Create a vecto which are the elements in `words` that start with "g" through "m"
g.m.words <- words[substr(words,1,1)>"g" & substr(words,1,1) <- "m"]

g.to.m.words <- "g" < words < "n"
g.m.words <- words[g.to.m.words]

# Define a function `WordBin` that takes in three arguments: a vector of words, and two letters. The function
# should return a vector of words that go between those letters alphabetically.


# Use your `WordBin` function to determine which of your words start with "e" through "q"

###LISTS

# Module 8 exercise 1
# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
vector.breakfast <- c("curry noodles", "rice")


# Create a vector of everything you ate for lunch
vector.lunch <- c("gyro", "salad")

# Create a list "meals" that has contains your `breakfast` and `lunch`
meals <- list(vector.breakfast,vector.lunch)
print(meals)
# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner
vector.dinner <- c("fried rice, apple")
meals <- list(meals, vector.dinner)
print(meals)
# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
meals$vector.dinner

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)


# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`



### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function

###### Module 9 Exercise 1
# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawks.points.for <- c(24,67,38,23,14,18)


# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
seahawks.points.against <- c(12,15,35,42,25,30)


# Combine your two vectors into a dataframe
my.data <- data.frame(seahawks.points.against,seahawks.points.for)
View(my.data)
# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
diff <- (seahawks.points.against-seahawks.points.for)
my.data <- data.frame(my.data,diff)
View(my.data)

# Create a new column "won" which is TRUE if the Seahawks won
won <- diff < 0
my.data <- data.frame(my.data,won)
View(my.data)
# Create a vector of the opponent names corresponding to the games played
opponents <- c("A","B","C","D","E","F")
my.data <- data.frame(my.data,opponents)
# Assign your dataframe rownames of their opponents
rownames(my.data)

# View your data frame to see how it has changed!


# Write a function that adds pizza to every meal


# Add pizza to every meal!

## Module 9 Exercise 2
# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
employees <- paste("Employee", c(1:100))
print(employees)
# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
salary.2014 <- runif(100, 40000, 50000)

# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
salary.2015 <- (salary.2014 + runif(100, 1000, 30000))

print(salary.2015)
# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
salaries <- data.frame(employees,salary.2014,salary.2015)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
raise <- salary.2015 - salary.2014
salaries <- data.frame(salaries,raise)
View(salaries)
install.packages("dplyr")

###### CLASS DAY 1/19 #############

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- (salaries$raise > 0)

### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)

# What was the 2015 salary of employee 57
salaries[57, "salaries.2015"]

# How many employees got a raise?
salaries$got.raise[salaries$got.raise]

# What was the value of the highest raise?
sum(salaries$got.raise)
max(salaries$raise)

# What was the "name" of the employee who received the highest raise?
salaries[salaries$raise == max(salaries$raise),"employees"]

# What was the largest decrease in salaries between the two years?


# What was the name of the employee who recieved largest decrease in salary?

# What was the average salary increase?


### Bonus ###

# Write a .csv file of your salaries to your working directory


# For people who did not get a raise, how much money did they lose?


# Is that what you expected them to lose based on how you generated their salaries?


data("Seatbelts")
seatbelts <- data.frame(Seatbelts)
seatbelts[seatbelts$drivers > 1600,]


















