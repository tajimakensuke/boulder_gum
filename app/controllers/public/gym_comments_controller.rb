class Public::GymCommentsController < ApplicationController

  def create
    @gym_comment = GymComment.new(gym_comment_params)

    @gym_comment.user_id = current_user.id
    @gym_comment.gym_id =  params[:gym_id]
    @gym_comment.save

    redirect_to gym_path(params[:gym_id])
  end

  def destroy
    GymComment.find_by(params[:id], gym_id: params[:gym_id]).destroy

      redirect_to request.referer
  end



private
  def gym_comment_params
    params.require(:gym_comment).permit(:comment, :user_id)
  end
end