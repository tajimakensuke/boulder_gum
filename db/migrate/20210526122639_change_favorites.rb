# frozen_string_literal: true

class ChangeFavorites < ActiveRecord::Migration[5.2]
  def change
    drop_table :favorites
  end
end
