# frozen_string_literal: true

class Gym < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  attachment :image

  has_many :gym_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :gym_name, presence: true
  validates :introduction, presence: true
  validates :address, presence: true
  validates :station, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
