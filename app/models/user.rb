class User < ActiveRecord::Base
  has_many :restaurants
  belongs_to :boss, class_name: 'User'
  has_many :subordinates, class_name: 'User', foreign_key: 'manager_id'
end
