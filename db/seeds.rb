# build the owner user
owner = User.create(name: 'admin', password: '1234')

# give our restaurant a manager
manager = User.create(name: 'zmance', password: '1234', manager: owner)

restaurant = Restaurant.create(name: 'Crab Shack', manager: manager, owner: owner)

%w{
  Crab
  Cheese
  Linguini
  Kale
  Lobster
  Clam
  Squid
  Cod
  Squirrel
  SeaLion
  Moose
  RockDove
}.each { |i| Ingredient.create(name: i) }

meal = Meal.create(name: 'Crab Parmesan w/ Linguini', price: '24.99', restaurant: restaurant)

crab_parm_recipe = Recipe.create(name: 'Crab Parmesan', cost: '8.99')
linguini_recipe  = Recipe.create(name: 'Linguini', cost: '0.99')

RecipeIngredient.create(recipe: crab_parm_recipe, ingredient: Ingredient.find_by(name: 'Crab'), quantity: '2 Large')
RecipeIngredient.create(recipe: crab_parm_recipe, ingredient: Ingredient.find_by(name: 'Cheese'), quantity: '1/2 C')

RecipeIngredient.create(recipe: linguini_recipe, ingredient: Ingredient.find_by(name: 'Linguini'), quantity: '1/2 C')

meal.recipes << crab_parm_recipe
meal.recipes << linguini_recipe
