# frozen_string_literal: true

class Public
  class HomesController < ApplicationController
    def index
      @gym_comments = GymComment.limit(5).order('created_at DESC')
      @users = User.all
    end




    private

    def gym_comment_params
      params.require(:gym_comment).permit(:comment, :user_id)
    end

    def gym_params
      params.require(:gym).permit(:gym_name, :introduction, :image, :address, :station)
    end


  end
end
