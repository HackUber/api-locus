Rails.application.routes.draw do
  resources :groups
  resources :cars
  resources :cars, only: [:show, :update]
  resources :sessions, only: [:create, :update]
end
