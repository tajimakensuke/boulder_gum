class Public::UsersController < ApplicationController

  def show
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)

    redirect_to user_path(@user.id)
  end

end



private
  def user_params
    params.require(:user).permit(:email, :name, :image)
  end