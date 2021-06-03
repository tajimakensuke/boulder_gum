# frozen_string_literal: true

module Public
  class GymCommentsController < ApplicationController

    def create
      @gym_comment = GymComment.new(gym_comment_params)

      @gym_comment.user_id = current_user.id
      @gym_comment.gym_id =  params[:gym_id]
      @gym_comment.save

      redirect_to request.referer

    end

    def destroy
      # binding.pry
      @gym_comment = GymComment.find_by(params[:id])
      @gym_comment.destroy

      redirect_to request.referer
    end

    private

    def gym_comment_params
      params.require(:gym_comment).permit(:comment, :user_id)
    end
  end
end
