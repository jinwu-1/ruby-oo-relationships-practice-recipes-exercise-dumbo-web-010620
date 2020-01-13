require_relative '../config/environment.rb'

recipe1 = Recipe.new("Recipe1")
recipe2 = Recipe.new("Recipe2")
recipe3 = Recipe.new("Recipe3")

user1 = User.new("User1")
user2 = User.new("User2")
user3 = User.new("User3")

ingredient1 = Ingredient.new("Ingredient1")
ingredient2 = Ingredient.new("Ingredient2")
ingredient3 = Ingredient.new("Ingredient3")

allergy1 = Allergy.new("Allergy1", user1, ingredient1)
allergy2 = Allergy.new("Allergy2", user2, ingredient1)
allergy3 = Allergy.new("Allergy3", user1, ingredient2)
allergy4 = Allergy.new("Allergy4", user2, ingredient3)
allergy5 = Allergy.new("Allergy5", user3, ingredient1)


recipecard1 = RecipeCard.new(user1, recipe1, "10-10-2019", 5)
recipecard2 = RecipeCard.new(user1, recipe2, "11-28-2019", 4)
recipecard3 = RecipeCard.new(user1, recipe3, "01-15-2019", 3)
recipecard4 = RecipeCard.new(user2, recipe3, "09-12-2019", 2)
recipecard5 = RecipeCard.new(user2, recipe1, "06-01-2019", 4)
recipecard6 = RecipeCard.new(user3, recipe1, "06-01-2019", 4)


recipeingredient1 = RecipeIngredient.new(ingredient1, recipe1)
recipeingredient2 = RecipeIngredient.new(ingredient3, recipe1)
recipeingredient3 = RecipeIngredient.new(ingredient2, recipe3)
recipeingredient4 = RecipeIngredient.new(ingredient1, recipe1)
recipeingredient5 = RecipeIngredient.new(ingredient2, recipe2)

binding.pry
