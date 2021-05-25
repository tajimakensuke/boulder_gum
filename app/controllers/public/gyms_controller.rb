class Public::GymsController < ApplicationController


  def index
    @gyms = Gym.all
  end
end


  private

    def gym_params
      params.require(:gym).permit(:gym_name, :introduction, :image)
    end


