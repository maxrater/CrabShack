owner = User.create(name: 'Chris DiMartino', password_digest: '123123123123')
manager = User.create(name: 'Zack Mance', password_digest: '23232323232')

restaurant = Restaurant.create(name: 'Crab Shack', manager: manager, owner: owner)

meal = Meal.create(name: 'Crab Parmesan w/ Linguini', price: '24.99')

crab = Ingredient.create(name: "Crab")
cheese = Ingredient.create(name: "Cheese")
pasta = Ingredient.create(name: 'Linguini')

crab_parm_recipe = Recipe.create(name: 'Crab Parmesan', cost: '8.99')
linguini_recipe  = Recipe.create(name: 'Linguini', cost: '0.99')

RecipeIngredient.create(recipe: crab_parm_recipe, ingredient: crab, quantity: '2 Large')
RecipeIngredient.create(recipe: crab_parm_recipe, ingredient: cheese, quantity: '1/2 C')

RecipeIngredient.create(recipe: linguini_recipe, ingredient: pasta, quantity: '1/2 C')

meal.recipes << crab_parm_recipe
meal.recipes << linguini_recipe
