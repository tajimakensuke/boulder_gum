# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :gym_id
      t.text :commment
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
