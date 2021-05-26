class Gym < ApplicationRecord
  attachment :image

  has_many :gym_comments
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
