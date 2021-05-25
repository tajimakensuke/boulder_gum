class Gym < ApplicationRecord
  attachment :image
  
  has_many :gym_comments
  has_many :favorites
end
