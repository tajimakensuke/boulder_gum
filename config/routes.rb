# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'public/homes#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :public do
    resources :homes, only: [:index]

    resources :maps, only: [:index] do
      collection do
        get '/map_request', to: 'maps#map', as: 'map_request'
      end
    end

    resources :users, only: %i[show edit update destroy] do
      member do
        patch :withdraw
      end
    end

    resources :gyms, only: %i[index show] do
      collection do
        get :search
      end
      resources :favorites, only: %i[create destroy]
    end

    resources :gym_comments, only: %i[create updaate destroy] do
      resources :likes, only: %i[create destroy]
    end
  end
end
