# frozen_string_literal: true

class Public
  class FavoritesController < ApplicationController
    def create
      @gym = Gym.find(params[:gym_id])
      favorite = current_user.favorites.new(gym_id: @gym.id)
      favorite.save
    end

    def destroy
      @gym = Gym.find(params[:gym_id])
      favorite = current_user.favorites.find_by(gym_id: @gym.id)
      favorite.destroy
    end
  end
end
