class Public::FavoritesController < ApplicationController
  
  def create
    @gym = Gym.find(params[:gym_id])
    favorite = current_user.favorites.new(gym_id: @gym.id)
    favorite.save
    redirect_to request.referer
  end
  
  def destroy
    @gym = Gym.find(params[:gym_id])
    favorite = current_user.favorites.find_by(gym_id: @gym.id)
    favorite.destroy
    redirect_to request.referer
  end
end

