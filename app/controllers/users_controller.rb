class UsersController < ApplicationController

  before_action :user_params, only: [:update, :create]
  before_action :set_user, only: [:update, :show]

  def show
  end

  def create
    @user = User.create(user_params)
    head :ok
  end

  def update
    if @user.update(user_params)
      head :ok
    else
      head :bad_request
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
    head :not_found unless @user
  end

  def user_params
    params.permit(:pickup_place, :phone_number, :email, :password, :name)
  end
end
