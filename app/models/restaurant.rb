class Restaurant < ActiveRecord::Base
  belongs_to :manager, class_name: 'User'
  belongs_to :owner, class_name: 'User'
  has_many :meals
  has_many :checks
end
