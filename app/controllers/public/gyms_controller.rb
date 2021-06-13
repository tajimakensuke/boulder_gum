# frozen_string_literal: true

  class Public::GymsController < ApplicationController


    def index
      @gyms = Gym.page(params[:page]).per(5)
      # 検索オブジェクト
      @search = Gym.ransack(params[:q])
      # 検索結果
    end

    def show
      @gym = Gym.find(params[:id])
      @gym_comments = @gym.gym_comments.order(created_at: :desc)
      @gym_comment = GymComment.new
      @gym_address = @gym.address
      @gym_favorites = @gym.favorites
      gon.gym = @gym
    end

    def search
      @search = Gym.ransack(params[:q])
      # 検索結果
      @gyms = @search.result
      if @gyms.count == 1
        @gym = @gyms.ids
        redirect_to gym_path(@gym)
      end
    end

    private

    def gym_params
      params.require(:gym).permit(:gym_name, :introduction, :image, :address, :station)
    end

    def gym_comment_params
      params.require(:gym_comment).permit(:comment)
    end

    def favorite_params
      params.require(:favorite)
    end

    def search_params
      params.require(:q).permit(:gym_name, :introduction, :image, :address, :station)
    end
  end
