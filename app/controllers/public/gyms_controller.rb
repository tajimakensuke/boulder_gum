class Public::GymsController < ApplicationController


  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
    @gym_comments = GymComment.all
    @gym_comment = GymComment.new
  end


end


  private

    def gym_params
      params.require(:gym).permit(:gym_name, :introduction, :image)
    end

    def gym_comment_params
      params.require(:gym_comment).permit(:comment)
    end

