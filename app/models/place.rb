class Place < ActiveRecord::Base
  has_many :userplaces
  has_many :users, through: :userplaces
end
