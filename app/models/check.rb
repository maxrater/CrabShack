class Check < ActiveRecord::Base
  belongs_to :restaurant
  has_many :checks, through: :checks_meals
end
