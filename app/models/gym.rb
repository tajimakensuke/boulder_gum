class Gym < ApplicationRecord
  attachment :image

  has_many :gym_comments
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    if user_signed_in?
    favorites.where(user_id: user.id).exists?
    end
  end
end
