class Favorite < ApplicationRecord
  belongs_to :gym
  belongs_to :user
  
end
