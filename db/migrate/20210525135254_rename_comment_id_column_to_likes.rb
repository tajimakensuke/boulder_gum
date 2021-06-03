# frozen_string_literal: true

class RenameCommentIdColumnToLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :comment_id, :gym_comment_id
  end
end
