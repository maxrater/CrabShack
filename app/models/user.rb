class User < ActiveRecord::Base
  has_many :restaurants
  belongs_to :manager, class_name: 'User'
  has_many :subordinates, class_name: 'User', foreign_key: 'manager_id'
end
