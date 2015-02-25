class Check < ActiveRecord::Base
  belongs_to :restaurant
  has_and_belongs_to_many :meals
end
