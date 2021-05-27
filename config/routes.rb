Rails.application.routes.draw do
  root to: 'public/homes#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :public do
    resources :homes, only: [:index]

    resources :users, only: [:show, :edit, :update, :destroy] do
      member do
        patch :withdraw
      end
    end

    resources :gyms, only: [:index, :show]  do
      resources :favorites, only: [:create, :destroy]
    end

    resources :gym_comments, only: [:create, :updaate, :destroy]  do
      resources :likes, only: [:create, :destroy]
    end

    end
  end


