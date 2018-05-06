class UsersController < Devise::RegistrationsController

  before_action :user_params, only: [:update]
  before_action :set_user, only: [:update]

  def show
  end

  def update
    super
  end

  private 

  def set_user
    @user = User.find(params[:id])
    head :not_found unless @user
  end

  def user_params
    params.permit(:pickup_place, :phone_number)
  end
end 
