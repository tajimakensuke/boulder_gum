# frozen_string_literal: true

class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :gym

  validates_uniqueness_of :gym_id, scope: :user_id
end
