class Gym < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  attachment :image

  has_many :gym_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?

  end
end
