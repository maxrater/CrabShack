class Meal < ActiveRecord::Base
  has_many :checks, through: :checks_meals
  has_many :recipes, through: :meals_recipes
end
