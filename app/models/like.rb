class Like < ApplicationRecord
  belongs_to :gym_comment
  belongs_to :user
end
