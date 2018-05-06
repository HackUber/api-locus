class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def authenticate_user
    authenticate_or_request_with_http_token do |token|
      @current_user = User.find(token)
    end
  end
end
