# frozen_string_literal: true


  class Public::GymCommentsController < ApplicationController
    
    before_action :baria_user, only: [:edit, :destroy]


    def create

      if user_signed_in?
        @gym_comment = GymComment.new(gym_comment_params)
        @gym_comment.user_id = current_user.id
        @gym_comment.gym_id =  params[:gym_id]
        @gym_comment.save
          redirect_to request.referer
      else
        @gym_comments = GymComment.limit(5).order('created_at DESC')
        flash[:alert] = "ログインまたは新規登録してください"
        render template: "public/homes/index"
      end
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

