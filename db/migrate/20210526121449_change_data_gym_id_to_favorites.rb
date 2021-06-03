# frozen_string_literal: true

class ChangeDataGymIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :gym_id, :integer
    remove_column :favorites, :user_id, :integer
  end
end
