Rails.application.routes.draw do
  devise_for :users

  resources :groups
  resources :cars, only: [:show, :update]
  resources :users, only: [:show, :update]
end
