# frozen_string_literal: true

module Public
  class LikesController < ApplicationController
    def create
      @gym_comment = GymComment.find(params[:gym_comment_id])
      like = current_user.likes.new(gym_comment_id: @gym_comment.id)
      like.save
      redirect_to request.referer
    end

    def destroy
      @gym_comment = GymComment.find(params[:gym_comment_id])
      like = current_user.likes.find_by(gym_comment_id: @gym_comment.id)
      like.destroy
      redirect_to request.referer
    end
  end
end
