class User < ApplicationRecord

  attachment :image

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gym_comments
  has_many :likes
  has_many :favorites
end
