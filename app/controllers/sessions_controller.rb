class SessionsController < ApplicationController
  def create
    user = User.where(email: params['email']).first
    return head(:unauthorized) unless user&.valid_password?(params['password'])

    render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
  end

  def destroy
  end
end
