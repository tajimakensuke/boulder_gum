class GymComment < ApplicationRecord

  belongs_to :user
  belongs_to :gym
  has_many :likes

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
