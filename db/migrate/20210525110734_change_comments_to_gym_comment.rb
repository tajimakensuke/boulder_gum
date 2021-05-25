class ChangeCommentsToGymComment < ActiveRecord::Migration[5.2]
  def change
    rename_table :comments, :gym_comments
  end
end
