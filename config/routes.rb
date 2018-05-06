Rails.application.routes.draw do
  devise_for :users
  devise_scope :users do
    get "/users" => "users_controller"
  end

  resource :users, only: [:show, :update]
end
