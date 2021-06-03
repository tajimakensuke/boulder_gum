# frozen_string_literal: true

class GymComment < ApplicationRecord
  belongs_to :user
  belongs_to :gym
  has_many :likes, dependent: :destroy

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  validates :comment, presence: true
end
