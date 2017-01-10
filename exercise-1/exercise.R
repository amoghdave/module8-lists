# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
breakfast.vector= c("Fried egg", "Avocado")


# Create a vector of everything you ate for lunch
lunch.vector=c("Paneer","Ketchup","Garlic Paste")

# Create a list "meals" that has contains your `breakfast` and `lunch`
meals=list("Breakfast"=breakfast.vector,"Lunch" =lunch.vector)


# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner
meals$Dinner=c("Salad","Cucumbers")


# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner=meals$Dinner



# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)
meals[[5]]=meals[[2]]


# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`
early.meals=list(meals[[1]],meals[[2]])



### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function
numberOfItemsEaten=lapply(meals,length)




  # Write a function that adds pizza to every meal
addPizza=function(mealList){
  for(i in 1:length(mealList)){
    mealList[[i]] <- c(mealList[[i]],"Pizza")
  }
  return(mealList)
}



# Add pizza to every meal!
meals=addPizza(meals)
print(meals)
