# frozen_string_literal: true

class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.text :address

      t.timestamps
    end
  end
end
