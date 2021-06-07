# frozen_string_literal: true

class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :gym_name
      t.text :introduction
      t.string :image_id
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
