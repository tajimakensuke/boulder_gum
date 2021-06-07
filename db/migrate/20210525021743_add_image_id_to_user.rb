# frozen_string_literal: true

class AddImageIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image_id, :string
  end
end
