Rails.application.routes.draw do
  root 'restaurants#index'
  devise_for :users
  resources :restaurants, only: [:index, :show, :new, :create, :destroy]
  resources :reviews, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :restaurants, only: [:show]
      resources :reviews, only: [:create, :update, :show, :edit, :destroy]
    end
  end
end
