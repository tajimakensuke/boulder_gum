class Gym < ApplicationRecord
  attachment :image
  
  has_many :comment
  has_many :favorite
end
