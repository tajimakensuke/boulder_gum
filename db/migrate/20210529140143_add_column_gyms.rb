# frozen_string_literal: true

class AddColumnGyms < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :address, :string
    add_column :gyms, :station, :string
  end
end
