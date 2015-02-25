class Meal < ActiveRecord::Base
  has_and_belongs_to_many :checks
  has_and_belongs_to_many :recipes
  belongs_to :restaurant

  def cost
    recipes.map { |r| r.cost }.sum.to_f
  end

  def margin
    (price - cost).to_f
  end
end
