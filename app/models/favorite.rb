class Favorite < ApplicationRecord
  belongs_to :gyms
  belongs_to :users
  
end
