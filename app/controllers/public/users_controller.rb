# frozen_string_literal: true

module Public
  class UsersController < ApplicationController
    before_action :authenticate_user!, except: [:top]

    def show
      @user = current_user
      @gym_comments = current_user.gym_comments
    end

    def update
      @user = current_user
      @user.update(user_params)

      redirect_to user_path(@user.id)
    end

    def destroy
      current_user.destroy

      redirect_to root_path
    end
  end
end

private

def user_params
  params.require(:user).permit(:email, :name, :image)
end

def gym_comment_params
  params.require(:gym_coment).permit(:user_id, :gym_id, :comment)
end

def gym_params
  params.require(:gym).permit(:gym_name)
end
