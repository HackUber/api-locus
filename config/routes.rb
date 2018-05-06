Rails.application.routes.draw do
  resources :groups
  resources :cars, only: [:show, :update]
  resources :sessions, only: [:create, :update]
  resources :users, only: [:create, :update]
end
