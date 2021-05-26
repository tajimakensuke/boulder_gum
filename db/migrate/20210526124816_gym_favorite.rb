class GymFavorite < ActiveRecord::Migration[5.2]
  def change
    drop_table :gym_favorites
  end
end
