# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
bfast <- c("cereal","banana","strawberries")

# Create a vector of everything you ate for lunch
lunch <- c("bread","peanut butter","jelly")

# Create a list "meals" that has contains your `breakfast` and `lunch`
meals <- list(bfast=bfast, lunch=lunch)

# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner
meals$dinner <- c("rice","chicken")

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- c(meals$dinner)

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)
meals[[5]]<- meals$lunch
  
# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`
early.meals <- list(meals[1],meals[2])


### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function
number.of.items <- lapply(meals, length)

# Write a function that adds pizza to every meal
addPizza <- function(x)
{
  return(c(x,"Pizza"))
}

# Add pizza to every meal!
lapply(meals, addPizza)
