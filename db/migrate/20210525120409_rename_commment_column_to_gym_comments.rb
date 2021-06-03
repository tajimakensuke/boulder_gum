# frozen_string_literal: true

class RenameCommmentColumnToGymComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :gym_comments, :commment, :comment
  end
end
