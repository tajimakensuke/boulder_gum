class Comment < ApplicationRecord
  
  belongs_to :user
  belongs_to :gym
  has_many :like
end
