class CheckMeal < ActiveRecord::Base
  belongs_to :check
  belongs_to :meal
end
