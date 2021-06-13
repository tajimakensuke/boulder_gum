# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def set_search
    @search = Gym.ransack(params[:q])
  end

  private

  def gym_params
    params.require(:gym).permit(:gym_name, :introduction, :image, :address, :station)
  end

  def search_params
    params.require(:q).permit(:gym_name, :introduction, :image, :address, :station)
  end
end
