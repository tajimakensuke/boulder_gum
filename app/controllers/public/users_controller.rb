# frozen_string_literal: true

class Public::UsersController < ApplicationController
    before_action :authenticate_user!, except: [:top]
    before_action :baria_user, only: [:destroy, :update]

    def show
      if current_user.id == User.find(params[:id])
        @user = current_user
        @gym_comments = current_user.gym_comments
        @gym_favorites = current_user.favorites
      else
        @user = User.find(params[:id])
        @gym_comments = @user.gym_comments
        @gym_favorites = @user.favorites
      end
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

  def favorite_params
    paramd.require(:favorite)
  end

  def baria_user
    unless User.find(params[:id]) == current_user
    redirect_to user_path(current_user.id)
    end
  end

end
